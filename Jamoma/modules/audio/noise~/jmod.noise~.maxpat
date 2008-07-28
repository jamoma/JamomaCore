{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 182.0, 322.0, 612.0, 409.0 ],
		"bglocked" : 0,
		"defrect" : [ 182.0, 322.0, 612.0, 409.0 ],
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
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 85.0, 220.0, 251.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-22"
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
					"patching_rect" : [ 200.0, 20.0, 141.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"presentation_rect" : [ 17.0, 22.0, 80.0, 4.0 ],
					"patching_rect" : [ 200.0, 50.0, 80.0, 4.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-49"
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
					"patching_rect" : [ 380.0, 280.0, 82.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-1"
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
					"patching_rect" : [ 380.0, 230.0, 63.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-2"
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
					"patching_rect" : [ 134.0, 241.0, 158.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mode:",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 16.0, 30.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 16.0, 30.0, 46.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-4",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Mode",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"pattrmode" : 1,
					"presentation_rect" : [ 53.0, 30.0, 83.0, 19.0 ],
					"items" : [ "off", ",", "white", ",", "pink" ],
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 25.0, 99.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-5"
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
					"patching_rect" : [ 292.0, 240.0, 47.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 380.0, 322.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
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
					"patching_rect" : [ 410.0, 322.0, 140.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 175.0, 90.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.noise~",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 380.0, 255.0, 101.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 322.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 175.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"id" : "obj-12",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"Play sine tones - square - triangle waves etc.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 269.0, 333.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode[1]",
					"text" : "jcom.parameter mode @type msg_symbol @description \"choose the noise function.\"",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 130.0, 440.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_gain" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"has_mute" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"prefix" : "audio",
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-16"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 260.0, 24.5, 260.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 143.5, 263.0, 24.5, 263.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 301.5, 263.0, 24.5, 263.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 160.0, 10.0, 160.0, 10.0, 93.0, 34.5, 93.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
