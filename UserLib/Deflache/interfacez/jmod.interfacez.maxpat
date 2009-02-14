{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 517.0, 307.0, 923.0, 408.0 ],
		"bglocked" : 0,
		"defrect" : [ 517.0, 307.0, 923.0, 408.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend symbol",
					"fontsize" : 11.595187,
					"patching_rect" : [ 575.0, 111.0, 93.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-20",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontsize" : 11.595187,
					"patching_rect" : [ 520.0, 110.0, 56.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-9",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend symbol",
					"fontsize" : 10.0,
					"patching_rect" : [ 561.0, 231.0, 82.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-19",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append bits",
					"fontsize" : 10.0,
					"patching_rect" : [ 561.0, 209.0, 62.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-18",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontsize" : 10.0,
					"patching_rect" : [ 561.0, 188.0, 49.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 194.0, 50.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-4",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 207.0, 39.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-10",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "patch: Nicolas Déflache",
					"fontsize" : 9.0,
					"patching_rect" : [ 631.0, 365.0, 105.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"maximum" : 16,
					"presentation_rect" : [ 48.0, 24.0, 25.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 331.0, 301.0, 30.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-32",
					"fontname" : "Verdana",
					"triangle" : 0,
					"minimum" : 1,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "updaterate[3]",
					"text" : "jcom.parameter channel @type msg_int @range/bounds 1 16 @range/clipmode both @description \"set the input MIDI channel\"",
					"fontsize" : 9.0,
					"patching_rect" : [ 372.0, 301.0, 518.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-14",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"fontsize" : 11.595187,
					"patching_rect" : [ 427.0, 29.0, 53.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-8",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"fontsize" : 11.595187,
					"patching_rect" : [ 388.0, 66.0, 50.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-21",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"prototypename" : "yellow",
					"ignoreclick" : 1,
					"blinktime" : 100,
					"presentation_rect" : [ 124.0, 23.0, 20.0, 20.0 ],
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"patching_rect" : [ 20.0, 351.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"prototypename" : "blue",
					"ignoreclick" : 1,
					"presentation_rect" : [ 124.0, 45.0, 20.0, 20.0 ],
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"patching_rect" : [ 250.0, 349.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"offcolor" : [ 0.0, 0.0, 0.466667, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"oncolor" : [ 0.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"presentation_rect" : [ 75.0, 24.0, 42.0, 19.0 ],
					"fontsize" : 10.0,
					"arrowframe" : 0,
					"items" : [ 7, "bits", ",", 10, "bits", ",", 12, "bits", ",", 11, "bits" ],
					"arrow" : 0,
					"types" : [  ],
					"patching_rect" : [ 468.0, 164.0, 42.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 3,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "audio[1]",
					"presentation_rect" : [ 7.0, 24.0, 34.0, 17.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 388.0, 29.0, 33.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"text" : "Init",
					"numoutlets" : 3,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"texton" : "Spacenavigator (On)",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "updaterate",
					"text" : "jcom.parameter resolution @type msg_int @description \"Resolution of interface\"",
					"fontsize" : 9.0,
					"patching_rect" : [ 513.0, 164.0, 331.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-6",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "port_menu",
					"labelclick" : 1,
					"presentation_rect" : [ 7.0, 45.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"items" : [ "Fireface (754) Port 1", ",", "to MaxMSP 1", ",", "to MaxMSP 2" ],
					"arrow" : 0,
					"types" : [  ],
					"patching_rect" : [ 388.0, 92.0, 114.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 3,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "menu",
					"text" : "jcom.parameter midiin @type msg_symbol @description \"Define the Interface-Z MIDI port\"",
					"fontsize" : 9.0,
					"patching_rect" : [ 519.0, 91.0, 371.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-16",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 9.0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 53.0, 107.0, 191.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-17",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 9.0,
					"patching_rect" : [ 189.0, 124.0, 31.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-22",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.interfacez",
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 314.0, 248.5, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-23",
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"An input module for Interface-Z sensor devices\"",
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 149.0, 390.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-24",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 20.0, 125.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ],
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 20.0, 182.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-26",
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 60.0, 124.0, 125.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-29",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ -2.0, 0.0, 150.0, 70.0 ],
					"has_mute" : 1,
					"patching_rect" : [ -2.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 198.5, 145.0, 29.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 145.0, 29.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 145.0, 29.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-2", 0 ],
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
 ]
	}

}
