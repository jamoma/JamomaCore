{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 182.0, 322.0, 549.0, 377.0 ],
		"bglocked" : 0,
		"defrect" : [ 182.0, 322.0, 549.0, 377.0 ],
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
					"text" : "jcom.out~ 1",
					"id" : "obj-1",
					"outlettype" : [ "signal", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 376.0, 236.0, 80.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"id" : "obj-2",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 376.0, 190.0, 61.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 134.0, 211.0, 155.0, 16.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mode:",
					"id" : "obj-4",
					"fontsize" : 10.0,
					"patching_rect" : [ 16.0, 30.0, 46.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 16.0, 30.0, 46.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Mode",
					"id" : "obj-5",
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 99.0, 83.0, 19.0 ],
					"presentation" : 1,
					"items" : [ "off", ",", "white", ",", "pink" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"pattrmode" : 1,
					"presentation_rect" : [ 53.0, 30.0, 83.0, 19.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 292.0, 210.0, 47.0, 16.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-7",
					"patching_rect" : [ 376.0, 280.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"id" : "obj-8",
					"fontsize" : 9.873845,
					"patching_rect" : [ 401.0, 281.0, 138.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-9",
					"fontsize" : 9.873845,
					"patching_rect" : [ 34.0, 208.0, 97.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jalg.noise~",
					"id" : "obj-10",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 376.0, 212.0, 99.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-11",
					"patching_rect" : [ 15.0, 292.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 210.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.noise~ @module_type audio @description \"Play sine tones - square - triangle waves etc.\"",
					"linecount" : 2,
					"id" : "obj-13",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 15.0, 239.0, 318.0, 30.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode[1]",
					"text" : "jcom.parameter mode @type msg_symbol @description \"choose the noise function.\"",
					"id" : "obj-15",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 25.0, 128.0, 433.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-16",
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"prefix" : "audio",
					"has_gain" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 301.5, 233.0, 24.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 143.5, 233.0, 24.5, 233.0 ]
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
