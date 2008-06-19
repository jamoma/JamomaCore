{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 102.0, 304.0, 1287.0, 528.0 ],
		"bglocked" : 0,
		"defrect" : [ 102.0, 304.0, 1287.0, 528.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
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
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-14",
					"fontsize" : 9.873845,
					"patching_rect" : [ 397.0, 316.0, 50.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-9",
					"patching_rect" : [ 355.0, 312.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/gain $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontsize" : 9.873845,
					"patching_rect" : [ 355.0, 338.0, 84.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"fontsize" : 9.873845,
					"patching_rect" : [ 69.0, 253.0, 34.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-8",
					"patching_rect" : [ 330.0, 242.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/mute $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontsize" : 9.873845,
					"patching_rect" : [ 330.0, 268.0, 88.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.paramui",
					"text" : "Feedback",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"description" : "\"\\\"\\\\\\\"A ratio of the emulated sample-rate to the global sample-rate.\\\\\\\"\\\"\"",
					"outlettype" : [ "" ],
					"label" : "Feedback",
					"id" : "obj-6",
					"dataspace" : "gain",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"presentation_rect" : [ 143.627396, 50.551678, 153.048065, 17.0 ],
					"ramp/drive" : "scheduler",
					"fontsize" : 10.0,
					"name" : "feedback",
					"patching_rect" : [ 150.0, 50.0, 153.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.paramui",
					"text" : "Resonance",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"description" : "\"\\\"\\\\\\\"A ratio of the emulated sample-rate to the global sample-rate.\\\\\\\"\\\"\"",
					"outlettype" : [ "" ],
					"label" : "Resonance",
					"id" : "obj-5",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"presentation_rect" : [ 143.627396, 36.42067, 153.04805, 17.0 ],
					"ramp/drive" : "scheduler",
					"fontsize" : 10.0,
					"name" : "filter/resonance",
					"patching_rect" : [ 150.0, 35.0, 153.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.paramui",
					"text" : "Cutoff",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"description" : "\"\\\"\\\\\\\"A ratio of the emulated sample-rate to the global sample-rate.\\\\\\\"\\\"\"",
					"outlettype" : [ "" ],
					"label" : "Cutoff",
					"id" : "obj-4",
					"dataspace" : "pitch",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"presentation_rect" : [ 143.627396, 22.0, 153.524033, 17.0 ],
					"ramp/drive" : "scheduler",
					"fontsize" : 10.0,
					"name" : "filter/cutoff",
					"patching_rect" : [ 150.0, 20.0, 151.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.paramui",
					"text" : "Bit Depth",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"description" : "\"\\\"\\\\\\\"The number of bits that will be retained in each sample - use this for bit crunching\\\\\\\"\\\"\"",
					"outlettype" : [ "" ],
					"label" : "Bit Depth",
					"id" : "obj-3",
					"type" : "msg_int",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"presentation_rect" : [ 2.0, 43.42067, 137.275177, 17.0 ],
					"ramp/drive" : "scheduler",
					"fontsize" : 10.0,
					"name" : "bitdepth",
					"patching_rect" : [ 5.0, 45.0, 152.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.paramui",
					"text" : "SR Ratio",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"description" : "\"\\\"\\\\\\\"A ratio of the emulated sample-rate to the global sample-rate.\\\\\\\"\\\"\"",
					"outlettype" : [ "" ],
					"label" : "SR Ratio",
					"id" : "obj-1",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"presentation_rect" : [ 2.0, 28.710337, 137.013168, 17.0 ],
					"ramp/drive" : "scheduler",
					"fontsize" : 10.0,
					"name" : "sr_ratio",
					"patching_rect" : [ 5.0, 30.0, 151.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "control input",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 40.0, 86.0, 71.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/dump",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-50",
					"fontsize" : 9.873845,
					"patching_rect" : [ 238.0, 142.0, 82.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"fontsize" : 9.873845,
					"patching_rect" : [ 93.0, 142.0, 140.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"fontsize" : 9.873845,
					"patching_rect" : [ 43.0, 122.0, 198.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 142.0, 34.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sr_ratio:ramp/function cosine",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontsize" : 9.873845,
					"patching_rect" : [ 345.0, 142.0, 166.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sr_ratio 0.4",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-44",
					"fontsize" : 9.873845,
					"patching_rect" : [ 331.0, 122.0, 76.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "", "" ],
					"id" : "obj-42",
					"fontsize" : 9.873845,
					"patching_rect" : [ 90.0, 332.0, 92.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-41",
					"fontsize" : 9.873845,
					"patching_rect" : [ 89.0, 487.0, 74.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~.maxpat",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-40",
					"fontsize" : 9.873845,
					"patching_rect" : [ 163.0, 358.0, 180.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.degrade~.maxpat",
					"fontname" : "Verdana",
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-39",
					"fontsize" : 9.873845,
					"patching_rect" : [ 34.0, 458.0, 129.0, 18.0 ],
					"numinlets" : 3,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"fontsize" : 9.873845,
					"patching_rect" : [ 177.0, 396.0, 53.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-37",
					"patching_rect" : [ 120.0, 525.0, 21.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-36",
					"patching_rect" : [ 89.0, 525.0, 21.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-35",
					"patching_rect" : [ 13.0, 240.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"patching_rect" : [ 163.0, 300.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"patching_rect" : [ 90.0, 300.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"patching_rect" : [ 13.0, 83.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.hub jmod.degrade~ @module_type audio @description \"Emulate the use of lower sample-rates and bit-resolution.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontsize" : 9.873845,
					"patching_rect" : [ 13.0, 186.0, 539.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_meters" : 2,
					"outlettype" : [ "" ],
					"has_mute" : 1,
					"has_bypass" : 1,
					"has_gain" : 1,
					"id" : "obj-31",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_mix" : 1,
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"prefix" : "audio"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 333.5, 384.0, 186.5, 384.0 ]
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
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-42", 1 ],
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
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-36", 0 ],
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
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-41", 0 ],
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
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-39", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
