{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 22.0, 65.0, 1024.0, 516.0 ],
		"bglocked" : 0,
		"defrect" : [ 22.0, 65.0, 1024.0, 516.0 ],
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
					"varname" : "midiin[2]",
					"text" : "jcom.message direct @type msg_symbol @description \"direct access to fluidsynth~ external\"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 333.862, 177.0, 482.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "chorus",
					"prototypename" : "jamoma recording",
					"border" : 1,
					"presentation_rect" : [ 45.0, 25.0, 49.265553, 15.0 ],
					"numoutlets" : 3,
					"text" : "chorus",
					"outlettype" : [ "", "", "int" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 335.861969, 38.384262, 54.138031, 16.615738 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"texton" : "chorus",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"numinlets" : 1,
					"mode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "reverb",
					"prototypename" : "jamoma recording",
					"border" : 1,
					"presentation_rect" : [ 45.0, 45.062508, 49.265553, 15.0 ],
					"numoutlets" : 3,
					"text" : "reverb",
					"outlettype" : [ "", "", "int" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 336.426453, 105.556656, 53.573547, 19.443344 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"texton" : "reverb",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"numinlets" : 1,
					"mode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "load",
					"prototypename" : "jamoma open",
					"border" : 1,
					"presentation_rect" : [ 6.034534, 25.0, 31.017475, 15.0 ],
					"numoutlets" : 3,
					"text" : "load",
					"outlettype" : [ "", "", "int" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 335.861969, 312.154083, 49.138031, 17.845917 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"texton" : "recording",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 2",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 335.861969, 410.0, 141.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-51",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 335.861969, 372.0, 141.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-8",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 184.0, 10.0, 80.0, 4.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 335.861969, 440.0, 80.0, 4.0 ],
					"presentation" : 1,
					"id" : "obj-50",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 184.0, 5.0, 80.0, 4.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 335.861969, 402.0, 80.0, 4.0 ],
					"presentation" : 1,
					"id" : "obj-49",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 55.0, 245.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-1",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 55.0, 220.0, 87.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-2",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 55.0, 195.0, 54.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-3",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "midiin[1]",
					"text" : "jcom.message load @type msg_symbol @description \"load a file\"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 336.861969, 335.0, 340.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "midiin",
					"text" : "jcom.message notein @type msg_int @description \"Receive midi information\"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 336.0, 273.0, 401.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-7",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "reverb[1]",
					"text" : "jcom.parameter reverb @type msg_toggle @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 1 @range/clipmode both @description \"Turn on reverb.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 336.0, 129.0, 445.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "kslider",
					"varname" : "keyboard",
					"presentation_rect" : [ 102.0, 24.0, 189.0, 41.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 336.0, 223.0, 189.0, 41.0 ],
					"presentation" : 1,
					"offset" : 60,
					"range" : 36,
					"id" : "obj-10",
					"numinlets" : 2,
					"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "chorus[1]",
					"text" : "jcom.parameter chorus @type msg_toggle @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 1 @range/clipmode both @description \"Turn on chorus.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 336.0, 63.0, 446.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 90.0, 196.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-16",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 55.0, 300.0, 132.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-17",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 125.0, 110.0, 137.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-18",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Synthesizer using soundfonts\"",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 15.0, 145.0, 286.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-19",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 85.0, 87.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-20",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 110.0, 24.0, 24.0 ],
					"id" : "obj-21",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 270.0, 110.0, 37.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-22",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 55.0, 330.0, 24.0, 24.0 ],
					"id" : "obj-23",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.fluidsynth~",
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 55.0, 275.0, 132.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-24",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 190.0, 24.0, 24.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 112.0, 330.0, 24.0, 24.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 55.0, 365.0, 105.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-27",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"has_gain" : 1,
					"presentation" : 1,
					"prefix" : "audio",
					"id" : "obj-28",
					"has_mute" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 119.5, 129.0, 24.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 134.0, 24.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 134.5, 132.0, 24.5, 132.0 ]
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
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 132.5, 268.0, 64.5, 268.0 ]
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 0 ],
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 345.5, 163.697418, 331.346161, 163.697418, 331.346161, 101.605293, 345.926453, 101.605293 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 345.5, 94.831612, 331.346161, 94.831612, 331.346161, 32.739483, 345.361969, 32.739483 ]
				}

			}
 ]
	}

}
