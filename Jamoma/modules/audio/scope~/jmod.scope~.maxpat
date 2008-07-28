{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 51.0, 87.0, 1345.0, 714.0 ],
		"bglocked" : 0,
		"defrect" : [ 51.0, 87.0, 1345.0, 714.0 ],
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
					"maxclass" : "newobj",
					"text" : "t f f",
					"numoutlets" : 2,
					"id" : "obj-8",
					"outlettype" : [ "float", "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 975.0, 240.0, 62.5, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 0",
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "signal", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 89.0, 495.0, 79.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 1 $1",
					"numoutlets" : 1,
					"id" : "obj-42",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 755.0, 64.0, 53.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"numoutlets" : 4,
					"id" : "obj-2",
					"outlettype" : [ "signal", "signal", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 90.0, 305.0, 64.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "range $1 $2",
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 975.0, 320.0, 70.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack -1. 1.",
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 975.0, 295.0, 63.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -1.",
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 975.0, 269.0, 33.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "buffers per pixel",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"presentation_rect" : [ 0.0, 22.0, 52.0, 31.0 ],
					"patching_rect" : [ 1.0, 22.0, 52.0, 31.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "samples per buffer",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"presentation_rect" : [ 0.0, 74.0, 58.0, 31.0 ],
					"patching_rect" : [ 1.0, 74.0, 58.0, 31.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb",
					"text" : "jcom.parameter range @range/bounds 0 100 @range/clipmode low @repetitions/allow 0 @type msg_float @description \"range of values above and below the zero line to display.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 750.0, 185.0, 473.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[2]",
					"text" : "jcom.parameter samples_per_buffer @range/bounds 8 256 @type msg_int @range/clipmode both @description \"control the scope display\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"id" : "obj-10",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 267.0, 289.0, 375.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triangle" : 0,
					"numoutlets" : 2,
					"id" : "obj-11",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 268.0, 110.0, 30.0, 19.0 ],
					"triscale" : 0.9,
					"patching_rect" : [ 716.0, 147.0, 30.0, 19.0 ],
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"contdata" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"id" : "obj-12",
					"outlettype" : [ "", "" ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"presentation_rect" : [ 275.0, 23.0, 13.0, 85.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"slidercolor" : [ 1.0, 0.705882, 0.294118, 1.0 ],
					"setstyle" : 1,
					"patching_rect" : [ 755.0, 92.0, 13.0, 85.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"presentation" : 1,
					"bgcolor" : [ 0.54902, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triangle" : 0,
					"numoutlets" : 2,
					"minimum" : 8,
					"id" : "obj-13",
					"maximum" : 256,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 104.0, 42.0, 19.0 ],
					"triscale" : 0.9,
					"patching_rect" : [ 267.0, 259.0, 42.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triangle" : 0,
					"numoutlets" : 2,
					"minimum" : 2,
					"id" : "obj-14",
					"maximum" : 8092,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 56.0, 43.0, 19.0 ],
					"triscale" : 0.9,
					"patching_rect" : [ 69.0, 155.0, 43.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numoutlets" : 0,
					"id" : "obj-15",
					"calccount" : 128,
					"presentation_rect" : [ 56.0, 21.0, 210.0, 112.0 ],
					"patching_rect" : [ 36.0, 367.0, 210.0, 112.0 ],
					"presentation" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"rounded" : 15,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[3]",
					"text" : "jcom.parameter buffers_per_pixel @range/bounds 2 8092 @range/clipmode both @type msg_int @description \"control the scope display\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"id" : "obj-16",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 69.0, 184.0, 399.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 550.0, 137.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"An oscilloscope emulator for viewing waverforms or analyzing phase relationships.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"id" : "obj-18",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 590.0, 614.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 275.0, 26.0, 26.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 275.0, 26.0, 26.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 210.0, 550.0, 29.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-22",
					"patching_rect" : [ 35.0, 630.0, 26.0, 26.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 35.0, 540.0, 26.0, 26.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-- audio in --",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"patching_rect" : [ 90.0, 245.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"prefix" : "audio",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 341.0, 236.5, 341.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 336.0, 45.5, 336.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [ 276.5, 279.0, 236.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 984.5, 347.0, 45.5, 347.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 78.5, 180.0, 45.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 276.5, 325.0, 648.0, 325.0, 648.0, 255.0, 276.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 78.5, 219.0, 471.0, 219.0, 471.0, 150.0, 78.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 585.0, 44.5, 585.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 583.0, 44.5, 583.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 759.5, 226.0, 709.0, 226.0, 709.0, 143.0, 725.5, 143.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 986.5, 230.0, 1279.0, 230.0, 1279.0, 55.0, 764.5, 55.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
