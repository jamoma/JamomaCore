{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 62.0, 45.0, 1214.0, 677.0 ],
		"bglocked" : 0,
		"defrect" : [ 62.0, 45.0, 1214.0, 677.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
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
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 140.0, 315.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-5",
					"presentation_rect" : [ 75.0, 0.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "wait_time[2]",
					"text" : "jcom.message trigger @repetitions/allow 1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 200.0, 205.0, 230.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "symbol /Zlooper~",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 470.0, 290.0, 101.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 225.0, 340.0, 48.0, 18.0 ],
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "wait_time[1]",
					"text" : "jcom.oscroute /trigger",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 225.0, 315.0, 134.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/Zlooper~.1/random bang",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 145.0, 425.0, 293.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf /Zlooper~.%ld/random bang",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 250.0, 390.0, 200.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 0 1 1",
					"numinlets" : 5,
					"fontsize" : 9.873845,
					"numoutlets" : 4,
					"patching_rect" : [ 250.0, 365.0, 160.0, 18.0 ],
					"outlettype" : [ "int", "", "", "int" ],
					"fontname" : "Verdana",
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapping_object_dst_0[1]",
					"text" : "jcom.send jcom.remote.module.to",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 145.0, 445.0, 180.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 470.0, 345.0, 50.0, 18.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"presentation_rect" : [ 100.0, 0.0, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 470.0, 265.0, 88.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll jcom.modules_instances 1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 4,
					"patching_rect" : [ 470.0, 310.0, 160.0, 18.0 ],
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"save" : [ "#N", "coll", "jcom.modules_instances", 1, ";" ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "out_ramp",
					"numinlets" : 1,
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 714.0, 44.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"hidden" : 1,
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"presentation_rect" : [ 5.0, 15.0, 35.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_value[3]",
					"text" : "jcom.parameter out/ramp @repetitions/allow 1 @type msg_float @description \"ramp time (sec.) for the value sent to output\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 715.0, 65.0, 438.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 40.0, 107.0, 211.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 225.0, 295.0, 45.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "wait_time",
					"text" : "jcom.parameter time/wait @repetitions/allow 1 @type msg_float @description \"Wait time before sending the output data\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 710.0, 215.0, 350.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "repeat_time",
					"text" : "jcom.parameter time/repeat @repetitions/allow 1 @type msg_float @description \"minimum time between two repetitions\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 710.0, 140.0, 350.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "wait",
					"numinlets" : 1,
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 710.0, 195.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"presentation_rect" : [ 116.0, 20.0, 35.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "tgate",
					"numinlets" : 1,
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 710.0, 119.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"presentation_rect" : [ 100.0, 40.0, 35.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Repeat time (s) :",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 70.0, 60.0, 95.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"presentation_rect" : [ 9.0, 40.0, 95.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Wait time (s) :",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 35.0, 83.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"presentation_rect" : [ 39.0, 20.0, 83.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 54.0, 128.0, 135.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Triggering the Zlooper~ in a cycle mode\"",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 32.0, 154.0, 473.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-73"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 32.0, 129.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-74",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 355.0, 13.0, 13.0 ],
					"id" : "obj-75",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 15.0, 150.0, 70.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"prefix" : "control",
					"id" : "obj-82",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 147.0, 41.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 63.5, 147.0, 41.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 724.5, 100.0, 699.0, 100.0, 699.0, 41.0, 723.5, 41.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 719.5, 250.0, 697.0, 250.0, 697.0, 186.0, 719.5, 186.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 719.5, 174.0, 695.0, 174.0, 695.0, 115.0, 719.5, 115.0 ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [ 259.5, 416.0, 428.5, 416.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-26", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
