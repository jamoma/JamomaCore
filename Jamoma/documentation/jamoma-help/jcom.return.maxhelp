{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 56.0, 96.0, 554.0, 639.0 ],
		"bglocked" : 1,
		"defrect" : [ 56.0, 96.0, 554.0, 639.0 ],
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
					"maxclass" : "newobj",
					"text" : "jcom.return cpu",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 254.0, 80.0, 88.0, 18.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.hub",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 300.0, 538.0, 61.0, 16.0 ],
					"id" : "obj-2",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.message",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 226.0, 538.0, 87.0, 16.0 ],
					"id" : "obj-3",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.parameter",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 142.0, 538.0, 101.0, 16.0 ],
					"id" : "obj-4",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"hidden" : 1,
					"patching_rect" : [ 142.0, 575.0, 78.0, 18.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"hidden" : 1,
					"patching_rect" : [ 142.0, 595.0, 55.0, 18.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See also",
					"fontsize" : 9.873845,
					"patching_rect" : [ 141.0, 521.0, 115.0, 18.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "data to be returned to the outside world",
					"fontsize" : 9.873845,
					"patching_rect" : [ 158.0, 485.0, 210.0, 18.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left:",
					"fontsize" : 9.873845,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 42.0, 485.0, 135.0, 18.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inlet:",
					"fontsize" : 13.482065,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 19.0, 457.0, 176.0, 23.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- within each module all parameter names must be unique. Different modules sharing the same parameter names is no problem.",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 158.0, 115.0, 364.0, 30.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(name of feedback)",
					"fontsize" : 9.873845,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 42.0, 118.0, 134.0, 18.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument (obligatory):",
					"fontsize" : 13.482065,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 19.0, 80.0, 176.0, 23.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.return",
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 20.0, 14.0, 189.0, 28.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "return information from the module to the outside world",
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 21.0, 40.0, 330.0, 18.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes:",
					"fontsize" : 13.482065,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 19.0, 159.0, 85.0, 23.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- text describing the parameter for html auto-documenting modules",
					"fontsize" : 9.873845,
					"patching_rect" : [ 152.0, 414.0, 349.0, 18.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"fontsize" : 9.873845,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 42.0, 402.0, 118.0, 18.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(text)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 414.0, 128.0, 18.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- define range boundary restrictions. Default: none",
					"fontsize" : 9.873845,
					"patching_rect" : [ 158.0, 371.0, 265.0, 18.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@clipmode",
					"fontsize" : 9.873845,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 42.0, 359.0, 117.0, 18.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both",
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 371.0, 124.0, 18.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- suggested normal range of parameter (two ints or floats). Default: 0.-127.",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 158.0, 328.0, 289.0, 30.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- permit repetitions of the same value",
					"fontsize" : 9.873845,
					"patching_rect" : [ 158.0, 295.0, 200.0, 18.0 ],
					"id" : "obj-28",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- what kind of parameter is this?",
					"fontsize" : 9.873845,
					"patching_rect" : [ 158.0, 230.0, 279.0, 18.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 295.0, 122.0, 18.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 283.0, 108.0, 18.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions",
					"fontsize" : 9.873845,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 42.0, 271.0, 119.0, 18.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range",
					"fontsize" : 9.873845,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 42.0, 316.0, 116.0, 18.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 242.0, 122.0, 18.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"fontsize" : 9.873845,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 42.0, 230.0, 115.0, 18.0 ],
					"id" : "obj-35",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "menu",
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 254.0, 117.0, 18.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2 ints or floats",
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 328.0, 123.0, 18.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1",
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 211.0, 108.0, 18.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0 (default)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 58.0, 199.0, 122.0, 18.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- determines if parameter can be ramped or not",
					"fontsize" : 9.873845,
					"patching_rect" : [ 158.0, 187.0, 278.0, 18.0 ],
					"id" : "obj-44",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp",
					"fontsize" : 9.873845,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"patching_rect" : [ 42.0, 187.0, 124.0, 18.0 ],
					"id" : "obj-45",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 19.0, 8.0, 389.0, 51.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 39.0, 115.0, 469.0, 29.0 ],
					"border" : 1,
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 39.0, 480.0, 469.0, 34.0 ],
					"border" : 1,
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 39.0, 398.0, 470.0, 44.0 ],
					"border" : 1,
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 39.0, 226.0, 470.0, 44.0 ],
					"border" : 1,
					"id" : "obj-38",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 39.0, 312.0, 470.0, 44.0 ],
					"border" : 1,
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 39.0, 269.0, 470.0, 44.0 ],
					"border" : 1,
					"id" : "obj-40",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 39.0, 355.0, 470.0, 44.0 ],
					"border" : 1,
					"id" : "obj-41",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 39.0, 183.0, 470.0, 44.0 ],
					"border" : 1,
					"id" : "obj-46",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
