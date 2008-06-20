{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 279.0, 44.0, 836.0, 749.0 ],
		"bglocked" : 0,
		"defrect" : [ 279.0, 44.0, 836.0, 749.0 ],
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
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, -4.0, 29.0, 29.0 ],
					"numinlets" : 0,
					"comment" : "signal inlet (int/float)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "repetitions[1]",
					"text" : "jcom.parameter repetitions @type msg_toggle @range/clipmode none @description \"Select whether repetitions should be filtered out or not.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-3",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 20.0, 491.0, 363.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "clip[1]",
					"text" : "jcom.parameter clip @type msg_toggle @range/clipmode none @description \"Turn clipping on.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 20.0, 429.0, 287.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "smooth[1]",
					"text" : "jcom.parameter smooth @type msg_toggle @range/clipmode none @description \"Turn smoothing on\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-7",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 20.0, 304.0, 298.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "smooth/value",
					"text" : "jcom.parameter smooth/value @type msg_float @range/clipmode none @description \"Smoothing value (slide).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 20.0, 366.0, 326.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "Input minimum value (only in manual scaling mode)",
					"annotation" : "Input minimum value (only in manual scaling mode)",
					"varname" : "scale-input-min",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 215.0, 23.0, 35.0, 19.0 ],
					"id" : "obj-10",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 405.0, 305.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triscale" : 0.9,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "scale/output/max",
					"text" : "jcom.parameter scale/output/max @type msg_float @range/clipmode none @description \"Output maximum scaling value.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-12",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 405.0, 515.0, 361.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "scale/output/min",
					"text" : "jcom.parameter scale/output/min @type msg_float @range/clipmode none @description \"Input minimum scaling value.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-14",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 405.0, 452.0, 352.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "scale/input/max",
					"text" : "jcom.parameter scale/input/max @type msg_float @range/clipmode none @description \"Input maximum scaling value. Only works in manual scaling mode.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-16",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 405.0, 390.0, 420.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "scale/input/min",
					"text" : "jcom.parameter scale/input/min @type msg_float @range/clipmode none @description \"Input minimum scaling value. Only works in manual scaling mode.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-18",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 405.0, 328.0, 417.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "Input maximum value",
					"annotation" : "Input maximum value",
					"varname" : "scale-output-max",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 251.0, 45.0, 35.0, 19.0 ],
					"id" : "obj-19",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 405.0, 493.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triscale" : 0.9,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "Output minimum value",
					"annotation" : "Output minimum value",
					"varname" : "scale-output-min",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 215.0, 45.0, 35.0, 19.0 ],
					"id" : "obj-20",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 405.0, 431.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triscale" : 0.9,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "Input maximum value (only in manual scaling mode)",
					"annotation" : "Input maximum value (only in manual scaling mode)",
					"varname" : "scale-input-max",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 250.0, 23.0, 35.0, 19.0 ],
					"id" : "obj-21",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 405.0, 369.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triscale" : 0.9,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "scale",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"presentation_rect" : [ 137.0, 23.0, 74.0, 19.0 ],
					"id" : "obj-22",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 405.0, 240.0, 74.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"labelclick" : 1,
					"items" : [ "no", "scale", ",", "manual", "scale", ",", "autoscale" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-23",
					"patching_rect" : [ 501.0, 187.0, 29.0, 29.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "repetitions",
					"numoutlets" : 1,
					"presentation_rect" : [ 78.0, 47.0, 15.0, 15.0 ],
					"id" : "obj-24",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 20.0, 471.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "repetitions",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 94.0, 44.0, 62.0, 19.0 ],
					"id" : "obj-25",
					"patching_rect" : [ 174.0, 25.0, 62.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "clip",
					"numoutlets" : 1,
					"presentation_rect" : [ 78.0, 23.0, 15.0, 15.0 ],
					"id" : "obj-26",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 20.0, 408.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "clip",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 94.0, 21.0, 25.0, 19.0 ],
					"id" : "obj-27",
					"patching_rect" : [ 132.0, 25.0, 25.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "smooth",
					"numoutlets" : 1,
					"presentation_rect" : [ 7.0, 23.0, 15.0, 15.0 ],
					"id" : "obj-28",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 20.0, 280.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "Smoothing value",
					"annotation" : "Smoothing value",
					"varname" : "smooth-value",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 7.0, 45.0, 35.0, 19.0 ],
					"id" : "obj-29",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 20.0, 345.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"triscale" : 0.9,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"patching_rect" : [ 56.0, 93.0, 193.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"patching_rect" : [ 251.0, 93.0, 135.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-32",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 500.0, 31.0, 55.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "smooth",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 23.0, 21.0, 52.0, 19.0 ],
					"id" : "obj-33",
					"patching_rect" : [ 23.0, 24.0, 52.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "scale[1]",
					"text" : "jcom.parameter scale @type msg_generic @range/clipmode none @description \"Choose scaling mode: none - manual - auto.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-35",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 405.0, 265.0, 343.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ],
					"patching_rect" : [ 406.0, 97.0, 49.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-37",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 406.0, 76.0, 91.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.condition",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-38",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 406.0, 156.0, 114.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Condition a continuous control signal: smooth - scale - clip - repeat.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-39",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 17.0, 130.0, 272.0, 42.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-40",
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 93.0, 27.0, 27.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-41",
					"patching_rect" : [ 17.0, 203.0, 27.0, 27.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-42",
					"outlettype" : [ "" ],
					"patching_rect" : [ 563.0, 141.0, 153.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "" ],
					"patching_rect" : [ 563.0, 119.0, 68.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-50",
					"outlettype" : [ "" ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 297.0, 390.0, 297.0, 390.0, 237.0, 414.5, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 527.5, 63.0, 415.5, 63.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 487.5, 119.0, 415.5, 119.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 487.5, 105.0, 572.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 336.0, 6.0, 336.0, 6.0, 276.0, 29.0, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 459.0, 6.0, 459.0, 6.0, 405.0, 29.0, 405.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 522.0, 6.0, 522.0, 6.0, 468.0, 29.0, 468.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 396.0, 6.0, 396.0, 6.0, 339.0, 29.5, 339.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 360.0, 390.0, 360.0, 390.0, 300.0, 414.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 420.0, 390.0, 420.0, 390.0, 366.0, 414.5, 366.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 483.0, 402.0, 483.0, 402.0, 426.0, 414.5, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 546.0, 402.0, 546.0, 402.0, 489.0, 414.5, 489.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 260.5, 111.0, 45.0, 111.0, 45.0, 126.0, 26.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 65.5, 111.0, 45.0, 111.0, 45.0, 126.0, 26.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
