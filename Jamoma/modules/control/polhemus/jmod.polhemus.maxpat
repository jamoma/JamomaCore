{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 618.0, 291.0, 897.0, 478.0 ],
		"bglocked" : 0,
		"defrect" : [ 618.0, 291.0, 897.0, 478.0 ],
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
					"maxclass" : "umenu",
					"varname" : "port_menu2",
					"presentation" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"items" : [  ],
					"fontname" : "Verdana",
					"types" : [  ],
					"pattrmode" : 1,
					"presentation_rect" : [ 131.0, 44.0, 125.0, 19.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 170.0, 320.0, 125.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "port:",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 99.0, 45.0, 34.0, 19.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 99.0, 40.0, 34.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "menu",
					"text" : "jcom.parameter menu @type msg_menu @range/clipmode none @description \"Define the Polhemus port\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 170.0, 341.0, 304.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 170.0, 182.0, 45.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample_rate[1]",
					"text" : "jcom.parameter sample_rate @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds -1 1000 @range/clipmode low @description \"Sample rate in ms\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 475.0, 199.0, 422.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "sample_rate",
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 98.0, 21.0, 35.0, 19.0 ],
					"id" : "obj-8",
					"minimum" : -1,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 475.0, 179.0, 35.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "status",
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"jsarguments" : [ "off", "on" ],
					"presentation_rect" : [ 6.0, 23.0, 20.0, 15.0 ],
					"id" : "obj-9",
					"filename" : "jcom.jsui_texttoggle.js",
					"numinlets" : 1,
					"patching_rect" : [ 475.0, 32.0, 20.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar init",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 475.0, 104.0, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message init @type generic @range/clipmode none @description \"Initialization of devices\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 475.0, 126.0, 264.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "status[1]",
					"text" : "jcom.parameter status @type toggle @range/clipmode none @description \"Turn polling on\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 475.0, 49.0, 278.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 170.0, 229.0, 49.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 170.0, 205.0, 91.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 36.0, 81.0, 135.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 229.0, 68.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 195.0, 80.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.polhemus",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 170.0, 287.0, 92.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.polhemus @module_type control @description \"Use polhemus.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 14.0, 106.0, 273.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 70.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-22",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 167.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 276.0, 274.0, 153.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 276.0, 252.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sample rate",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 28.0, 21.0, 68.0, 19.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 29.0, 21.0, 68.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.2",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-26",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numinlets" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 45.5, 100.0, 23.5, 100.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 179.5, 372.0, 156.0, 372.0, 156.0, 315.0, 179.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 484.5, 231.0, 462.0, 231.0, 462.0, 174.0, 484.5, 174.0 ]
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 484.5, 81.0, 462.0, 81.0, 462.0, 27.0, 484.5, 27.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 251.5, 243.0, 285.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 251.5, 257.0, 179.5, 257.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
