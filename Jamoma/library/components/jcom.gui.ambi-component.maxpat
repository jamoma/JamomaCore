{
	"patcher" : 	{
		"rect" : [ 566.0, 44.0, 624.0, 650.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 566.0, 44.0, 624.0, 650.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 0",
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 379.0, 379.0, 48.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 379.0, 358.0, 51.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"id" : "obj-3",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 179.0, 488.0, 32.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "YEEEESSSS!",
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 179.0, 460.0, 66.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r ambi_precense",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 179.0, 427.0, 85.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar button_mute",
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 379.0, 429.0, 90.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[4]",
					"text" : "b 1",
					"outlettype" : [ "bang" ],
					"id" : "obj-7",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 379.0, 160.0, 22.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message \/audio\/meters\/clear",
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 379.0, 140.0, 209.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "mess_dm",
					"text" : "defeat $1",
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 449.0, 271.0, 53.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pvar_gain",
					"text" : "pvar gain_master",
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 379.0, 316.0, 89.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"hidden" : 1,
					"patching_rect" : [ 176.0, 123.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio\/mute",
					"text" : "jcom.parameter audio\/mute @type msg_toggle @description \"When active\\, this attribute turns off the module's processing.mxtorithm to save CPU\"",
					"linecount" : 6,
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 379.0, 450.0, 148.0, 70.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio\/meters\/freeze",
					"text" : "jcom.parameter audio\/meters\/freeze @type msg_toggle @description \"When active\\, this attribute turns off the signal level meters in the module to conserve CPU.\"",
					"linecount" : 6,
					"outlettype" : [ "", "" ],
					"id" : "obj-13",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 379.0, 189.0, 150.0, 70.0 ],
					"numinlets" : 0,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pattr_gain",
					"text" : "jcom.parameter.gain audio\/gain",
					"outlettype" : [ "", "" ],
					"id" : "obj-14",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 379.0, 337.0, 153.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "mute",
					"id" : "obj-15",
					"patching_rect" : [ 149.0, 191.0, 13.0, 12.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "output master gain",
					"id" : "obj-16",
					"patching_rect" : [ 61.0, 196.0, 85.0, 10.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter_omni",
					"id" : "obj-17",
					"patching_rect" : [ 63.0, 193.0, 100.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"varname" : "gain_master",
					"outlettype" : [ "int", "int" ],
					"id" : "obj-18",
					"clickedimage" : 0,
					"topvalue" : 0,
					"knobpict" : "jcom.slider.knob.gain.pct",
					"movevertical" : 0,
					"inactiveimage" : 0,
					"imagemask" : 1,
					"bkgndpict" : "jcom.slider.bg.gain.pct",
					"patching_rect" : [ 62.0, 197.0, 84.0, 8.0 ],
					"numinlets" : 2,
					"rightvalue" : 157,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "button_mute",
					"outlettype" : [ "int" ],
					"id" : "obj-19",
					"trackhorizontal" : 1,
					"snap" : 1,
					"mode" : 1,
					"trackvertical" : 1,
					"ratio" : 1,
					"patching_rect" : [ 148.0, 192.0, 11.0, 11.0 ],
					"numinlets" : 1,
					"multiplier" : 1,
					"tracking" : 1,
					"name" : "jcom.button.mute.pct",
					"numoutlets" : 1,
					"frames" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "background",
					"outlettype" : [ "int" ],
					"id" : "obj-20",
					"trackhorizontal" : 1,
					"snap" : 1,
					"trackvertical" : 1,
					"ratio" : 1,
					"patching_rect" : [ 59.0, 190.0, 103.0, 15.0 ],
					"numinlets" : 1,
					"multiplier" : 1,
					"name" : "jcom.bg.ambi-component.pct",
					"numoutlets" : 1,
					"range" : 2,
					"frames" : 1,
					"ignoreclick" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [ 388.5, 397.0, 373.0, 397.0, 373.0, 311.0, 388.5, 311.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 388.5, 536.0, 371.0, 536.0, 371.0, 425.0, 388.5, 425.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
