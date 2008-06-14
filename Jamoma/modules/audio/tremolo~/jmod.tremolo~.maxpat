{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 341.0, 152.0, 985.0, 581.0 ],
		"bglocked" : 0,
		"defrect" : [ 341.0, 152.0, 985.0, 581.0 ],
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
					"text" : "Phase offset (0-1)",
					"presentation_rect" : [ 6.0, 51.0, 100.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"patching_rect" : [ 6.0, 46.0, 100.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "tremolo/phase_offset",
					"text" : "jcom.parameter tremolo/phase_offset @type msg_float @range/bounds 0. 1. @range/clipmode none @ramp/drive scheduler @description \"LFO phase offset between left and right channels (0-1).\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"id" : "obj-2",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 467.0, 140.0, 362.0, 42.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "PhaseOffset",
					"presentation_rect" : [ 118.0, 51.0, 40.0, 19.0 ],
					"numoutlets" : 2,
					"triangle" : 0,
					"id" : "obj-4",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 467.0, 117.0, 40.0, 19.0 ],
					"presentation" : 1,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Depth",
					"presentation_rect" : [ 118.0, 35.0, 40.0, 19.0 ],
					"numoutlets" : 2,
					"triangle" : 0,
					"id" : "obj-5",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 638.0, 45.0, 40.0, 19.0 ],
					"presentation" : 1,
					"maximum" : 100.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.class.lfo_parameters",
					"text" : "jcom.class.lfo_parameters tremolo",
					"numoutlets" : 2,
					"id" : "obj-6",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 467.0, 71.0, 190.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"patching_rect" : [ 381.0, 370.0, 49.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~.maxpat",
					"numoutlets" : 2,
					"id" : "obj-8",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 248.0, 346.0, 173.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"patching_rect" : [ 110.0, 141.0, 193.0, 16.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numoutlets" : 3,
					"id" : "obj-10",
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 138.0, 442.0, 70.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"numoutlets" : 4,
					"id" : "obj-11",
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 138.0, 323.0, 177.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"patching_rect" : [ 118.0, 163.0, 135.0, 16.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.tremolo~ @size 1U-half @module_type audio @description \"Apply tremolo to incoming signal.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 197.0, 287.0, 30.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numoutlets" : 0,
					"id" : "obj-17",
					"patching_rect" : [ 34.0, 164.0, 87.0, 19.0 ],
					"hidden" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 164.0, 13.0, 13.0 ],
					"hidden" : 1,
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"patching_rect" : [ 249.0, 163.0, 31.0, 16.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"patching_rect" : [ 138.0, 294.0, 13.0, 13.0 ],
					"hidden" : 1,
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-21",
					"patching_rect" : [ 138.0, 471.0, 13.0, 13.0 ],
					"hidden" : 1,
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Frequency",
					"presentation_rect" : [ 118.0, 18.0, 40.0, 19.0 ],
					"numoutlets" : 2,
					"triangle" : 0,
					"id" : "obj-22",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 467.0, 46.0, 40.0, 19.0 ],
					"presentation" : 1,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 305.0, 296.0, 13.0, 13.0 ],
					"hidden" : 1,
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "LFO Depth (%)",
					"presentation_rect" : [ 6.0, 35.0, 85.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-24",
					"patching_rect" : [ 6.0, 33.0, 85.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "LFO Frequency (Hz)",
					"presentation_rect" : [ 5.0, 20.0, 109.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"patching_rect" : [ 5.0, 20.0, 109.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.tremolo~",
					"numoutlets" : 3,
					"id" : "obj-26",
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 83.0, 409.0, 120.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 3,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"numoutlets" : 0,
					"id" : "obj-27",
					"patching_rect" : [ 174.0, 295.0, 108.0, 19.0 ],
					"hidden" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-28",
					"patching_rect" : [ 20.0, 240.0, 13.0, 13.0 ],
					"hidden" : 1,
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-29",
					"patching_rect" : [ 166.0, 471.0, 13.0, 13.0 ],
					"hidden" : 1,
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"numoutlets" : 0,
					"id" : "obj-30",
					"patching_rect" : [ 111.0, 489.0, 107.0, 19.0 ],
					"hidden" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"has_bypass" : 1,
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"prefix" : "audio",
					"has_gain" : 1,
					"presentation" : 1,
					"has_mix" : 1,
					"has_mute" : 1,
					"numinlets" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 119.5, 184.0, 29.5, 184.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 127.5, 184.0, 29.5, 184.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 258.5, 185.0, 29.5, 185.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 257.5, 398.0, 92.5, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 390.5, 398.0, 92.5, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 476.5, 132.0, 476.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 476.5, 190.0, 453.0, 190.0, 453.0, 111.0, 476.5, 111.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 476.5, 95.0, 453.0, 95.0, 453.0, 39.0, 476.5, 39.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 647.5, 96.0, 690.0, 96.0, 690.0, 30.0, 647.5, 30.0 ]
				}

			}
 ]
	}

}
