{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 507.0, 100.0, 912.0, 454.0 ],
		"bglocked" : 0,
		"defrect" : [ 507.0, 100.0, 912.0, 454.0 ],
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
					"text" : "tosymbol",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"patching_rect" : [ 455.0, 105.0, 56.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"patching_rect" : [ 540.0, 315.0, 49.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"patching_rect" : [ 425.0, 290.0, 136.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"patching_rect" : [ 135.0, 250.0, 199.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"patching_rect" : [ 395.0, 30.0, 141.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 152.0, 8.0, 80.0, 4.0 ],
					"id" : "obj-49",
					"patching_rect" : [ 395.0, 55.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Frequency",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"presentation_rect" : [ 73.0, 30.0, 46.0, 19.0 ],
					"id" : "obj-1",
					"triangle" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 395.0, 180.0, 46.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 1",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"patching_rect" : [ 400.0, 371.0, 71.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frequency",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 16.0, 31.0, 58.0, 19.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"patching_rect" : [ 16.0, 31.0, 58.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 0",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "", "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"patching_rect" : [ 400.0, 265.0, 66.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"patching_rect" : [ 150.0, 275.0, 137.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode[1]",
					"text" : "jcom.parameter mode @type msg_symbol @description \"choose the waveform type.\"",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 395.0, 135.0, 442.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "frequency",
					"text" : "jcom.parameter frequency @type msg_float @range/bounds 0. 20000. @ramp/drive scheduler @description \"Frequency used.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"patching_rect" : [ 395.0, 205.0, 331.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mode:",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 136.0, 31.0, 41.0, 19.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"patching_rect" : [ 136.0, 31.0, 41.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Mode",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "off", ",", "sine", ",", "sawtooth", ",", "sawtooth", "(aa)", ",", "triangle", "(aa)", ",", "rectangle", "(aa)" ],
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 174.0, 30.0, 83.0, 19.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"patching_rect" : [ 395.0, 80.0, 144.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"patching_rect" : [ 295.0, 275.0, 37.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-13",
					"patching_rect" : [ 400.0, 405.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"patching_rect" : [ 435.0, 410.0, 111.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 280.0, 87.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sine~",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"patching_rect" : [ 400.0, 348.0, 61.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-17",
					"patching_rect" : [ 25.0, 360.0, 28.0, 28.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"patching_rect" : [ 25.0, 215.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"Play sine tones - square - triangle waves etc.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"patching_rect" : [ 25.0, 315.0, 315.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"numoutlets" : 1,
					"has_gain" : 1,
					"outlettype" : [ "" ],
					"prefix" : "audio",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-21",
					"has_mute" : 1,
					"has_meters" : 1,
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 464.5, 129.0, 404.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 404.5, 163.0, 390.0, 163.0, 390.0, 76.0, 404.5, 76.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 345.0, 409.5, 345.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 434.5, 342.0, 409.5, 342.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 144.5, 303.0, 34.5, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"midpoints" : [ 404.5, 242.0, 388.0, 242.0, 388.0, 173.0, 404.5, 173.0 ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 159.5, 303.0, 34.5, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 304.5, 303.0, 34.5, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
