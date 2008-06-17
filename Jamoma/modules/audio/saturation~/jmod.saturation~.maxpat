{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 148.0, 71.0, 780.0, 646.0 ],
		"bglocked" : 0,
		"defrect" : [ 148.0, 71.0, 780.0, 646.0 ],
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
					"patching_rect" : [ 425.0, 310.0, 152.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontsize" : 10.970939,
					"patching_rect" : [ 426.0, 274.0, 152.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-50",
					"presentation_rect" : [ 152.0, 10.0, 80.0, 4.0 ],
					"patching_rect" : [ 330.0, 340.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-49",
					"presentation_rect" : [ 152.0, 5.0, 80.0, 4.0 ],
					"patching_rect" : [ 331.0, 304.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.saturation~",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 109.0, 190.0, 96.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 140.0, 389.0, 196.0, 17.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @type msg_symbol @description \"Mode: Table used for waveshaping.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-3",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 354.0, 235.0, 265.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Mode",
					"items" : [ "s-shaped", ",", "sinus" ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"numoutlets" : 3,
					"id" : "obj-5",
					"presentation_rect" : [ 191.0, 34.0, 67.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 354.0, 208.0, 67.0, 19.0 ],
					"presentation" : 1,
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "preamp",
					"text" : "jcom.parameter preamp @ramp/drive scheduler @repetitions/allow 0 @type msg_float @range/bounds -12 48 @range/clipmode none @description \"Preamp (dB).\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-6",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 354.0, 129.0, 421.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "PreAmp",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"id" : "obj-8",
					"presentation_rect" : [ 96.0, 45.0, 40.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"patching_rect" : [ 354.0, 104.0, 40.0, 19.0 ],
					"presentation" : 1,
					"maximum" : 99.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Preamp (dB)",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-9",
					"presentation_rect" : [ 15.0, 45.0, 72.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 45.0, 72.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-10",
					"outlettype" : [ "signal", "signal", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 109.0, 216.0, 71.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 4,
					"id" : "obj-11",
					"outlettype" : [ "signal", "signal", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 109.0, 158.0, 153.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 156.0, 407.0, 137.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "depth",
					"text" : "jcom.parameter depth @ramp/drive scheduler @repetitions/allow 0 @type msg_float @range/bounds 0 99 @range/clipmode both @description \"Saturation: Depth.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-14",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 354.0, 58.0, 411.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.saturation~ @module_type audio @description \"Saturation (distortion) effect.\"",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 39.0, 434.0, 489.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontsize" : 10.0,
					"patching_rect" : [ 53.0, 406.0, 87.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"patching_rect" : [ 39.0, 406.0, 15.0, 15.0 ],
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
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 284.0, 407.0, 37.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"patching_rect" : [ 109.0, 138.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-21",
					"patching_rect" : [ 109.0, 242.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SaturationDepth",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"id" : "obj-22",
					"presentation_rect" : [ 96.0, 23.0, 40.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"patching_rect" : [ 354.0, 32.0, 40.0, 19.0 ],
					"presentation" : 1,
					"maximum" : 99.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 249.0, 138.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Depth (%)",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-24",
					"presentation_rect" : [ 16.0, 23.0, 69.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 16.0, 23.0, 69.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-25",
					"fontsize" : 10.0,
					"patching_rect" : [ 102.0, 120.0, 108.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-26",
					"patching_rect" : [ 39.0, 477.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-27",
					"patching_rect" : [ 136.0, 242.0, 15.0, 15.0 ],
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
					"id" : "obj-28",
					"fontsize" : 10.0,
					"patching_rect" : [ 88.0, 259.0, 107.0, 19.0 ]
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
					"has_mix" : 1,
					"id" : "obj-29",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"has_bypass" : 1,
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 207.833328, 183.0, 118.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 149.5, 428.0, 48.5, 428.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 293.5, 428.0, 48.5, 428.0 ]
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 165.5, 428.0, 48.5, 428.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 363.5, 267.0, 339.0, 267.0, 339.0, 204.0, 363.5, 204.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 363.5, 162.0, 339.0, 162.0, 339.0, 99.0, 363.5, 99.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 363.5, 90.0, 339.0, 90.0, 339.0, 27.0, 363.5, 27.0 ]
				}

			}
 ]
	}

}
