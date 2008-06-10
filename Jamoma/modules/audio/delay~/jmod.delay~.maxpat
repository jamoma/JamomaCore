{
	"patcher" : 	{
		"rect" : [ 30.0, 69.0, 689.0, 734.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 30.0, 69.0, 689.0, 734.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 358.0, 358.0, 47.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~.maxpat",
					"patching_rect" : [ 225.0, 334.0, 143.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-2",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/store 1 default, \/preset\/write",
					"patching_rect" : [ 113.0, 493.0, 191.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-3",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"patching_rect" : [ 121.0, 426.0, 62.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-4",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"patching_rect" : [ 121.0, 308.0, 166.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-5",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Right",
					"patching_rect" : [ 88.0, 45.0, 43.0, 17.0 ],
					"transparent" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"triangle" : 0,
					"id" : "obj-6",
					"numoutlets" : 2,
					"minimum" : 0,
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[9]",
					"text" : "jcom.message delay @ramp/drive scheduler @repetitions 1 @range/bounds 0 1000000 @description \"Delay time in samples to be applied to both channels.\"",
					"linecount" : 2,
					"patching_rect" : [ 38.0, 77.0, 326.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-7",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Left",
					"patching_rect" : [ 13.0, 45.0, 43.0, 17.0 ],
					"transparent" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"triangle" : 0,
					"id" : "obj-8",
					"numoutlets" : 2,
					"minimum" : 0,
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "delay right",
					"patching_rect" : [ 85.0, 28.0, 66.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 0,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "delay left",
					"patching_rect" : [ 13.0, 28.0, 48.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"patching_rect" : [ 126.0, 510.0, 125.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-11",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Right",
					"patching_rect" : [ 12.0, 198.0, 57.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-12",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "delay\/right",
					"text" : "jcom.parameter delay\/right @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 0 1000000 @range/clipmode both @description \"Delay time in samples for right channel.\"",
					"linecount" : 2,
					"patching_rect" : [ 12.0, 223.0, 390.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-13",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Left",
					"patching_rect" : [ 12.0, 124.0, 52.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-14",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.delay~ @size 1U-half @module_type audio @description \"Sample-accurate stereo delay.\"",
					"linecount" : 2,
					"patching_rect" : [ 19.0, 546.0, 252.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-15",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"patching_rect" : [ 33.0, 510.0, 79.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-16",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 19.0, 510.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-17",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"patching_rect" : [ 253.0, 510.0, 37.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-18",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 121.0, 289.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 121.0, 456.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-20",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "delay\/left",
					"text" : "jcom.parameter delay\/left @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 0 1000000 @range/clipmode both @description \"Delay time in samples for left channel.\"",
					"linecount" : 2,
					"patching_rect" : [ 12.0, 149.0, 386.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-21",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 277.0, 289.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-22",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.delay~",
					"patching_rect" : [ 69.0, 399.0, 114.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 3,
					"hidden" : 1,
					"id" : "obj-23",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"patching_rect" : [ 144.0, 289.0, 105.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-24",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 19.0, 586.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-25",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 147.0, 456.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-26",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"patching_rect" : [ 121.0, 470.0, 101.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-27",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "\/Jamoma",
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"color" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-34",
					"numoutlets" : 1,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 367.5, 387.0, 78.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 234.5, 384.0, 78.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 122.5, 528.0, 28.5, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 262.5, 533.0, 28.5, 533.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 135.5, 531.0, 28.5, 531.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 21.5, 259.0, 7.0, 259.0, 7.0, 191.0, 21.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ 21.5, 185.0, 7.0, 185.0, 7.0, 117.0, 21.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
