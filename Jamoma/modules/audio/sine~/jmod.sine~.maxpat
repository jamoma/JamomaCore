{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 220.0, 160.0, 566.0, 461.0 ],
		"bglocked" : 0,
		"defrect" : [ 220.0, 160.0, 566.0, 461.0 ],
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
					"text" : "jcom.meter_receive 1",
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 0,
					"fontsize" : 10.970939,
					"numoutlets" : 1,
					"patching_rect" : [ 401.0, 25.0, 152.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-49",
					"numinlets" : 1,
					"presentation_rect" : [ 152.0, 8.0, 80.0, 4.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 401.0, 55.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Frequency",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-1",
					"numinlets" : 1,
					"presentation_rect" : [ 73.0, 30.0, 46.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 108.0, 182.0, 46.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 1",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 383.0, 310.0, 70.0, 18.0 ],
					"outlettype" : [ "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frequency",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"presentation_rect" : [ 16.0, 31.0, 58.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 31.0, 58.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 383.0, 264.0, 53.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 147.0, 286.0, 135.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode[1]",
					"text" : "jcom.parameter mode @type msg_symbol @description \"choose the waveform type.\"",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 108.0, 112.0, 438.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "frequency",
					"text" : "jcom.parameter frequency @type msg_float @range/bounds 0. 20000. @ramp/drive scheduler @description \"Frequency used.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 108.0, 209.0, 327.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mode:",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"presentation_rect" : [ 136.0, 31.0, 41.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 136.0, 31.0, 41.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Mode",
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-11",
					"numinlets" : 1,
					"presentation_rect" : [ 174.0, 30.0, 83.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 76.0, 86.0, 83.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"pattrmode" : 1,
					"items" : [ "off", ",", "sine", ",", "sawtooth", ",", "sawtooth", "(aa)", ",", "triangle", "(aa)", ",", "rectangle", "(aa)" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 275.0, 286.0, 37.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-13",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 383.0, 354.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"hidden" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 408.0, 355.0, 111.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"hidden" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 283.0, 87.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jalg.sine~",
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 383.0, 287.0, 103.0, 18.0 ],
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-17",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 366.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-18",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 22.0, 284.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.sine~ @size 1U-half @module_type audio @description \"Play sine tones - square - triangle waves etc.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 22.0, 313.0, 310.0, 30.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "audio",
					"id" : "obj-21",
					"numinlets" : 1,
					"has_bypass" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"presentation" : 1,
					"has_mix" : 1,
					"has_freeze" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 284.5, 307.0, 31.5, 307.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 156.5, 307.0, 31.5, 307.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 117.5, 105.0, 117.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 117.5, 140.0, 70.0, 140.0, 70.0, 81.0, 85.5, 81.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 117.5, 255.0, 101.0, 255.0, 101.0, 163.0, 117.5, 163.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
