{
	"patcher" : 	{
		"rect" : [ 40.0, 52.0, 672.0, 404.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 40.0, 52.0, 672.0, 404.0 ],
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
					"text" : "jcom.out~ 0",
					"patching_rect" : [ 387.0, 349.0, 57.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"patching_rect" : [ 387.0, 308.0, 53.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
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
					"text" : "range $1 $2",
					"patching_rect" : [ 381.0, 154.0, 63.0, 15.0 ],
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
					"text" : "pack -1. 1.",
					"patching_rect" : [ 381.0, 131.0, 55.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -1.",
					"patching_rect" : [ 381.0, 108.0, 32.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "buffers per pixel",
					"linecount" : 2,
					"patching_rect" : [ 3.0, 21.0, 51.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "samples per buffer",
					"linecount" : 2,
					"patching_rect" : [ 3.0, 73.0, 51.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"patching_rect" : [ 302.0, 94.0, 38.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb",
					"text" : "jcom.parameter range @repetitions 0 @type msg_float @description \"range of values above and below the zero line to display.\"",
					"linecount" : 2,
					"patching_rect" : [ 325.0, 35.0, 295.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-9",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[2]",
					"text" : "jcom.parameter samples_per_buffer @range/bounds 8 256 @type msg_int @range/clipmode both @description \"control the scope display\"",
					"linecount" : 2,
					"patching_rect" : [ 86.0, 221.0, 283.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-10",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 266.0, 109.0, 28.0, 17.0 ],
					"transparent" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"triangle" : 0,
					"id" : "obj-11",
					"numoutlets" : 2,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"patching_rect" : [ 274.0, 23.0, 13.0, 85.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"slidercolor" : [ 1.0, 0.705882, 0.294118, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"id" : "obj-12",
					"numoutlets" : 2,
					"setstyle" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"bgcolor" : [ 0.54902, 0.54902, 0.54902, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 14.0, 101.0, 25.0, 17.0 ],
					"transparent" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"triangle" : 0,
					"maximum" : 256,
					"id" : "obj-13",
					"numoutlets" : 2,
					"minimum" : 8,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 14.0, 49.0, 32.0, 17.0 ],
					"transparent" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"triangle" : 0,
					"maximum" : 8092,
					"id" : "obj-14",
					"numoutlets" : 2,
					"minimum" : 2,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"patching_rect" : [ 56.0, 21.0, 210.0, 112.0 ],
					"rounded" : 0,
					"numinlets" : 2,
					"calccount" : 128,
					"id" : "obj-15",
					"numoutlets" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[3]",
					"text" : "jcom.parameter buffers_per_pixel @range/bounds 2 8092 @range/clipmode both @type msg_int @description \"control the scope display\"",
					"linecount" : 2,
					"patching_rect" : [ 126.0, 185.0, 264.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-16",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"patching_rect" : [ 32.0, 279.0, 125.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-17",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.scope~ @size 2U-half @module_type audio.no_panel @description \"An oscilloscope emulator for viewing waverforms or analyzing phase relationships.\"",
					"linecount" : 2,
					"patching_rect" : [ 11.0, 306.0, 359.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-18",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 430.0, 288.0, 15.0, 15.0 ],
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
					"maxclass" : "inlet",
					"patching_rect" : [ 387.0, 288.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-20",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"patching_rect" : [ 161.0, 279.0, 23.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-21",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 11.0, 345.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-22",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 11.0, 280.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-23",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-- audio in --",
					"patching_rect" : [ 387.0, 271.0, 58.0, 17.0 ],
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
					"maxclass" : "jcom.ui",
					"text" : "\/Jamoma",
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 1,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 170.5, 302.0, 20.5, 302.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 41.5, 300.0, 20.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 396.5, 338.0, 634.0, 338.0, 634.0, 7.0, 65.5, 7.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 1,
					"midpoints" : [ 430.5, 334.0, 622.0, 334.0, 622.0, 12.0, 256.5, 12.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-5", 0 ],
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 1
				}

			}
 ]
	}

}
