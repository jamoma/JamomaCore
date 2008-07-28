{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 20.0, 52.0, 1070.0, 689.0 ],
		"bglocked" : 0,
		"defrect" : [ 20.0, 52.0, 1070.0, 689.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"presentation_rect" : [ 160.0, 5.0, 100.0, 8.0 ],
					"patching_rect" : [ 425.0, 360.0, 100.0, 8.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 425.0, 335.0, 142.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p formatting",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 467.0, 168.0, 77.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 265.0, 308.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 265.0, 308.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 115.0, 225.0, 26.0, 26.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "int" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 115.0, 164.0, 31.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack set 0 0.",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 115.0, 190.0, 78.0, 19.0 ],
									"numinlets" : 3,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 115.0, 141.0, 32.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0.",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "float" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 115.0, 117.0, 70.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "listfunnel",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "list" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 115.0, 94.0, 59.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 75.0, 65.0, 57.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.0, 30.0, 26.0, 26.0 ],
									"numinlets" : 0,
									"id" : "obj-8",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "10gains",
					"numoutlets" : 2,
					"bgcolor" : [ 0.066667, 0.066667, 0.066667, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candycane" : 2,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"outlettype" : [ "", "" ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane2" : [ 0.168627, 0.243137, 0.419608, 1.0 ],
					"presentation_rect" : [ 26.0, 63.0, 241.0, 63.0 ],
					"size" : 10,
					"setminmax" : [ -60.0, 0.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"patching_rect" : [ 427.0, 254.0, 241.0, 63.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"setstyle" : 1,
					"id" : "obj-2",
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"slidercolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 250.0, 385.0, 53.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 133.0, 361.0, 136.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 145.0, 227.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 1",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 255.0, 445.0, 76.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 133.0, 332.0, 58.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 160.0, 170.0, 144.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"Additive synthesis using 10 harmonic partials.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 205.0, 336.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 170.0, 90.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 160.0, 26.0, 26.0 ],
					"numinlets" : 0,
					"id" : "obj-14",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 310.0, 170.0, 38.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 255.0, 480.0, 26.0, 26.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Frequency",
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"presentation_rect" : [ 126.0, 32.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 417.0, 87.0, 49.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "frequency",
					"text" : "jcom.parameter frequency @type msg_float @range/bounds 20 20000 @range/clipmode none @ramp/drive scheduler @ramp/function linear @description \"Frequency of the signal.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 468.0, 74.0, 473.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "harmonic_gains",
					"text" : "jcom.parameter harmonic_gains @type msg_list @ramp/drive scheduler @ramp/function linear @description \"List of gain values (dB) for the 10 partials\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 467.0, 136.0, 434.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Frequency (Hz)",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 31.0, 32.0, 93.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 323.0, 87.0, 93.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-20",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.10_harmonics~",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "signal" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 133.0, 414.0, 141.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 250.0, 26.0, 26.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 285.0, 485.0, 119.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-23",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"has_meters" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"has_gain" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"has_mute" : 1,
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-25",
					"prefix" : "audio"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 259.5, 408.0, 142.5, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
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
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 193.0, 24.5, 193.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 193.0, 24.5, 193.0 ]
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 144.5, 193.0, 24.5, 193.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
