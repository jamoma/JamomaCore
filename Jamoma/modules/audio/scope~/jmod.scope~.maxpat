{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 95.0, 87.0, 1345.0, 714.0 ],
		"bglocked" : 0,
		"defrect" : [ 95.0, 87.0, 1345.0, 714.0 ],
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
					"maxclass" : "message",
					"text" : "set 1 $1",
					"id" : "obj-42",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 755.0, 64.0, 51.0, 16.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 0",
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 80.0, 497.0, 70.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"id" : "obj-2",
					"outlettype" : [ "signal", "signal", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 89.0, 303.0, 63.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "range $1 $2",
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 924.0, 324.0, 69.0, 16.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack -1. 1.",
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 924.0, 301.0, 63.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -1.",
					"id" : "obj-5",
					"outlettype" : [ "float" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 924.0, 278.0, 33.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "buffers per pixel",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"id" : "obj-6",
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 22.0, 52.0, 31.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 1.0, 22.0, 52.0, 31.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "samples per buffer",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"id" : "obj-7",
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 74.0, 58.0, 31.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 1.0, 74.0, 58.0, 31.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb",
					"text" : "jcom.parameter range @range/bounds 0 100 @range/clipmode low @repetitions/allow 0 @type msg_float @description \"range of values above and below the zero line to display.\"",
					"linecount" : 2,
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 776.0, 228.0, 467.0, 30.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[2]",
					"text" : "jcom.parameter samples_per_buffer @range/bounds 8 256 @type msg_int @range/clipmode both @description \"control the scope display\"",
					"linecount" : 2,
					"id" : "obj-10",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 267.0, 289.0, 369.0, 30.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-11",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 716.0, 147.0, 30.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"triangle" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 266.0, 109.0, 30.0, 19.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"id" : "obj-12",
					"contdata" : 1,
					"slidercolor" : [ 1.0, 0.705882, 0.294118, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"bgcolor" : [ 0.54902, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 755.0, 92.0, 13.0, 85.0 ],
					"presentation" : 1,
					"setstyle" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 274.0, 23.0, 13.0, 85.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-13",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 267.0, 259.0, 42.0, 19.0 ],
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"minimum" : 8,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 1.0, 104.0, 42.0, 19.0 ],
					"maximum" : 256,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-14",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 69.0, 155.0, 43.0, 19.0 ],
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"minimum" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 1.0, 56.0, 43.0, 19.0 ],
					"maximum" : 8092,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"id" : "obj-15",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 36.0, 367.0, 210.0, 112.0 ],
					"presentation" : 1,
					"calccount" : 128,
					"rounded" : 15,
					"numinlets" : 2,
					"presentation_rect" : [ 56.0, 21.0, 210.0, 112.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[3]",
					"text" : "jcom.parameter buffers_per_pixel @range/bounds 2 8092 @range/clipmode both @type msg_int @description \"control the scope display\"",
					"linecount" : 2,
					"id" : "obj-16",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 69.0, 184.0, 393.0, 30.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 55.0, 562.0, 135.0, 16.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.scope~ @module_type audio.no_panel @description \"An oscilloscope emulator for viewing waverforms or analyzing phase relationships.\"",
					"linecount" : 2,
					"id" : "obj-18",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 34.0, 589.0, 605.0, 30.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"patching_rect" : [ 132.0, 281.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"patching_rect" : [ 89.0, 281.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 192.0, 562.0, 29.0, 16.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-22",
					"patching_rect" : [ 34.0, 628.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 34.0, 563.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-- audio in --",
					"id" : "obj-24",
					"fontsize" : 9.873845,
					"patching_rect" : [ 89.0, 264.0, 73.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-25",
					"has_bypass" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"prefix" : "audio",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 583.0, 43.5, 583.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 201.5, 585.0, 43.5, 585.0 ]
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 276.5, 325.0, 648.0, 325.0, 648.0, 255.0, 276.5, 255.0 ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 933.5, 347.0, 45.5, 347.0 ]
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.803922, 0.803922, 0.803922, 0.501961 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.803922, 0.803922, 0.803922, 0.501961 ],
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 98.5, 336.0, 45.5, 336.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [ 113.166664, 341.0, 236.5, 341.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"color" : [ 0.803922, 0.803922, 0.803922, 0.501961 ],
					"midpoints" : [ 764.5, 87.0, 762.0, 87.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 0.803922, 0.803922, 0.803922, 0.501961 ],
					"midpoints" : [ 725.5, 207.0, 785.5, 207.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 0.803922, 0.803922, 0.803922, 0.501961 ],
					"midpoints" : [ 759.5, 196.0, 785.5, 196.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"color" : [ 0.803922, 0.803922, 0.803922, 0.501961 ],
					"midpoints" : [ 1009.5, 277.0, 1250.0, 277.0, 1250.0, 48.0, 764.5, 48.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"color" : [ 0.803922, 0.803922, 0.803922, 0.501961 ],
					"midpoints" : [ 785.5, 263.0, 704.0, 263.0, 704.0, 133.0, 725.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"color" : [ 0.803922, 0.803922, 0.803922, 0.501961 ],
					"midpoints" : [ 1009.5, 282.0, 977.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.803922, 0.803922, 0.803922, 0.501961 ],
					"midpoints" : [ 1009.5, 270.0, 933.5, 270.0 ]
				}

			}
 ]
	}

}
