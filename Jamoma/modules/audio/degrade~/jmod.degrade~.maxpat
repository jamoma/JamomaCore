{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 95.0, 208.0, 1287.0, 528.0 ],
		"bglocked" : 0,
		"defrect" : [ 95.0, 208.0, 1287.0, 528.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 9.873845,
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
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 122.0, 20.0, 46.0, 19.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 627.0, 48.0, 46.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"id" : "obj-17",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sr_ratio",
					"text" : "jcom.parameter sr_ratio @type msg_float @range/bounds 0. 1. @repetitions/allow 1 @range/clipmode both @ramp/drive scheduler @description \"A ratio of the emulated sample-rate to the global sample-rate.\"",
					"linecount" : 3,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 695.0, 35.0, 336.0, 38.0 ],
					"numoutlets" : 3,
					"id" : "obj-18",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bitdepth",
					"text" : "jcom.parameter bitdepth @type msg_int @range/bounds 1 24 @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"The number of bits that will be retained in each sample - use this for bit crunching effects\"",
					"linecount" : 3,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 690.0, 85.0, 336.0, 38.0 ],
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bit depth",
					"fontname" : "Verdana",
					"presentation_rect" : [ 60.0, 45.0, 56.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 575.0, 95.0, 66.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-21",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 119.0, 45.0, 39.0, 19.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 624.0, 93.0, 39.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"id" : "obj-22",
					"outlettype" : [ "int", "bang" ],
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sample rate ratio",
					"fontname" : "Verdana",
					"presentation_rect" : [ 25.0, 20.0, 96.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 540.0, 50.0, 106.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-23",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 69.0, 253.0, 34.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "control input",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 40.0, 86.0, 71.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/dump",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 238.0, 142.0, 82.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-50",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 93.0, 142.0, 140.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-49",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 43.0, 122.0, 198.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-48",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 142.0, 34.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-47",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sr_ratio:ramp/function cosine",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 345.0, 142.0, 166.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-45",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sr_ratio 0.4",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 331.0, 122.0, 76.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-44",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 90.0, 332.0, 92.0, 18.0 ],
					"numoutlets" : 4,
					"id" : "obj-42",
					"outlettype" : [ "signal", "signal", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 89.0, 487.0, 74.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-41",
					"outlettype" : [ "signal", "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~.maxpat",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 163.0, 358.0, 180.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-40",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.degrade~.maxpat",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"fontsize" : 9.873845,
					"patching_rect" : [ 34.0, 458.0, 129.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-39",
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 177.0, 396.0, 53.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-38",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 525.0, 21.0, 21.0 ],
					"numoutlets" : 0,
					"id" : "obj-37",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 89.0, 525.0, 21.0, 21.0 ],
					"numoutlets" : 0,
					"id" : "obj-36",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 240.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-35",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 163.0, 300.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 90.0, 300.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 13.0, 83.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.hub @module_type audio @description \"Emulate the use of lower sample-rates and bit-resolution.\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 13.0, 186.0, 539.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_mute" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"prefix" : "audio",
					"numinlets" : 1,
					"has_bypass" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"has_mix" : 1,
					"has_gain" : 1,
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"has_meters" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 179.0, 22.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 340.5, 176.0, 22.5, 176.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 67.5, 167.0, 22.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 247.5, 173.0, 22.5, 173.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 102.5, 170.0, 22.5, 170.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 52.5, 164.0, 22.5, 164.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-39", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-39", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 2 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 186.5, 443.0, 43.5, 443.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 172.5, 440.0, 43.5, 440.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 333.5, 384.0, 186.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 2 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
