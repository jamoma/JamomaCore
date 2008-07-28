{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 149.0, 88.0, 416.0, 404.0 ],
		"bglocked" : 0,
		"defrect" : [ 149.0, 88.0, 416.0, 404.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
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
					"maxclass" : "comment",
					"text" : "Generic module messages and properties",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 1.0, 246.0, 353.0, 26.0 ],
					"fontsize" : 16.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Presets",
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 3.0, 2.0, 122.0, 26.0 ],
					"fontsize" : 16.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "init this module",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 258.0, 283.0, 101.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "refresh the ui",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 81.0, 318.0, 91.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "freeze this module's ui display",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 23.0, 285.0, 185.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 245.0, 373.0, 27.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 216.0, 283.0, 42.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/refresh",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 6.0, 319.0, 66.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 7.0, 283.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze $1",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 6.0, 301.0, 78.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/parameter_names:/dump",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 217.0, 303.0, 142.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 218.0, 323.0, 141.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 273.0, 373.0, 75.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-13",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 367.0, 18.0, 18.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 3",
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 233.0, 162.0, 106.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 2 funky",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 233.0, 145.0, 120.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default",
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 233.0, 128.0, 127.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "store a preset with an optional name",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 233.0, 100.0, 113.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "save the current set of presets to an XML file",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 233.0, 42.0, 132.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/write",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 233.0, 70.0, 100.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "read the default preset file, and then recall the first preset",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 92.0, 186.0, 167.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/default",
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 6.0, 189.0, 88.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall a preset by name or number",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 119.0, 89.0, 109.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall 1",
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 5.0, 117.0, 110.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall funky",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 5.0, 100.0, 112.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall default",
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 4.0, 82.0, 118.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall 2",
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 5.0, 134.0, 110.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall 3",
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 5.0, 151.0, 110.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "read a preset XML file from disk",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 96.0, 28.0, 99.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/read",
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 4.0, 38.0, 94.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/read #1.xml",
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 4.0, 56.0, 209.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "post all presets to the Max window",
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 99.0, 219.0, 190.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/post",
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 6.0, 221.0, 75.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 28.0, 373.0, 215.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 373.0, 27.0 ],
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
