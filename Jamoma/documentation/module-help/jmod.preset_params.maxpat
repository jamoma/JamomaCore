{
	"patcher" : 	{
		"rect" : [ 149.0, 88.0, 416.0, 404.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 149.0, 88.0, 416.0, 404.0 ],
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
					"maxclass" : "comment",
					"text" : "init this module",
					"patching_rect" : [ 258.0, 283.0, 98.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "refresh the ui",
					"patching_rect" : [ 81.0, 318.0, 88.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "freeze this module's ui display",
					"patching_rect" : [ 23.0, 285.0, 181.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Generic module messages and properties",
					"patching_rect" : [ 1.0, 246.0, 373.0, 28.0 ],
					"fontname" : "Verdana",
					"fontsize" : 15.799999,
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 245.0, 373.0, 27.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 0,
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"patching_rect" : [ 216.0, 283.0, 41.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-6",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/ui\/refresh",
					"patching_rect" : [ 6.0, 319.0, 63.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 7.0, 283.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/ui\/freeze $1",
					"patching_rect" : [ 6.0, 301.0, 75.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-9",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/parameter_names\/dump",
					"patching_rect" : [ 217.0, 303.0, 138.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"patching_rect" : [ 218.0, 323.0, 137.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-11",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 273.0, 373.0, 75.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 7.0, 367.0, 18.0, 18.0 ],
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/store 3",
					"patching_rect" : [ 233.0, 162.0, 105.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-14",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/store 2 funky",
					"patching_rect" : [ 233.0, 145.0, 117.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-15",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/store 1 default",
					"patching_rect" : [ 233.0, 128.0, 123.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-16",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "store a preset with an optional name",
					"linecount" : 2,
					"patching_rect" : [ 233.0, 100.0, 126.0, 30.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "save the current set of presets to an XML file",
					"linecount" : 2,
					"patching_rect" : [ 233.0, 42.0, 129.0, 30.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/write",
					"patching_rect" : [ 233.0, 70.0, 97.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "read the default preset file, and then recall the first preset",
					"linecount" : 2,
					"patching_rect" : [ 92.0, 186.0, 163.0, 30.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/default",
					"patching_rect" : [ 6.0, 189.0, 85.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-21",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall a preset by name or number",
					"linecount" : 2,
					"patching_rect" : [ 119.0, 89.0, 106.0, 30.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/recall 1",
					"patching_rect" : [ 5.0, 117.0, 107.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-23",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/recall funky",
					"patching_rect" : [ 5.0, 100.0, 108.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-24",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/recall default",
					"patching_rect" : [ 4.0, 82.0, 115.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-25",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/recall 2",
					"patching_rect" : [ 5.0, 134.0, 107.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-26",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/recall 3",
					"patching_rect" : [ 5.0, 151.0, 107.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-27",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "read a preset XML file from disk",
					"linecount" : 2,
					"patching_rect" : [ 96.0, 28.0, 102.0, 30.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/read",
					"patching_rect" : [ 4.0, 38.0, 90.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-29",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/read #1.xml",
					"patching_rect" : [ 4.0, 56.0, 204.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-30",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "post all presets to the Max window",
					"patching_rect" : [ 99.0, 219.0, 185.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-31",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/post",
					"patching_rect" : [ 6.0, 221.0, 72.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-32",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 28.0, 373.0, 215.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Presets",
					"patching_rect" : [ 3.0, 2.0, 111.0, 28.0 ],
					"fontname" : "Verdana",
					"fontsize" : 15.799999,
					"numinlets" : 1,
					"id" : "obj-34",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 0.0, 373.0, 27.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 0,
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-13", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
