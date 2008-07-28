{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 241.0, 55.0, 558.0, 630.0 ],
		"bglocked" : 0,
		"defrect" : [ 241.0, 55.0, 558.0, 630.0 ],
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
					"maxclass" : "message",
					"text" : "jcom.hub",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-2",
					"patching_rect" : [ 230.0, 595.0, 61.0, 17.0 ],
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
					"fontsize" : 10.0,
					"id" : "obj-3",
					"patching_rect" : [ 140.0, 595.0, 87.0, 17.0 ],
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
					"fontsize" : 10.0,
					"id" : "obj-4",
					"patching_rect" : [ 35.0, 595.0, 101.0, 17.0 ],
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
					"fontsize" : 10.0,
					"id" : "obj-5",
					"hidden" : 1,
					"patching_rect" : [ 35.0, 630.0, 78.0, 19.0 ],
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
					"fontsize" : 10.0,
					"id" : "obj-6",
					"hidden" : 1,
					"patching_rect" : [ 35.0, 650.0, 55.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See also",
					"fontsize" : 10.0,
					"id" : "obj-7",
					"patching_rect" : [ 35.0, 570.0, 115.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "data to be returned to the outside world",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"patching_rect" : [ 180.0, 530.0, 211.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left:",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"patching_rect" : [ 45.0, 530.0, 135.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"id" : "obj-10",
					"patching_rect" : [ 20.0, 500.0, 176.0, 23.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"fontsize" : 10.0,
					"id" : "obj-11",
					"patching_rect" : [ 180.0, 115.0, 364.0, 31.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(name of feedback)",
					"fontsize" : 10.0,
					"id" : "obj-12",
					"patching_rect" : [ 45.0, 115.0, 134.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"id" : "obj-13",
					"patching_rect" : [ 20.0, 80.0, 176.0, 23.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"id" : "obj-14",
					"patching_rect" : [ 20.0, 15.0, 189.0, 28.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "return information from the module to the outside world",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"patching_rect" : [ 20.0, 40.0, 330.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"id" : "obj-17",
					"patching_rect" : [ 20.0, 155.0, 85.0, 23.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- text describing the parameter for html auto-documenting modules",
					"fontsize" : 10.0,
					"id" : "obj-20",
					"patching_rect" : [ 180.0, 460.0, 351.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"patching_rect" : [ 45.0, 460.0, 118.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- define range boundary restrictions. Default: none",
					"fontsize" : 10.0,
					"id" : "obj-24",
					"patching_rect" : [ 180.0, 410.0, 266.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/clipmode",
					"fontsize" : 10.0,
					"id" : "obj-25",
					"patching_rect" : [ 45.0, 410.0, 117.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both",
					"fontsize" : 10.0,
					"id" : "obj-26",
					"patching_rect" : [ 215.0, 430.0, 124.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"fontsize" : 10.0,
					"id" : "obj-27",
					"patching_rect" : [ 180.0, 370.0, 289.0, 31.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- permit repetitions of the same value",
					"fontsize" : 10.0,
					"id" : "obj-28",
					"patching_rect" : [ 180.0, 310.0, 200.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- what kind of parameter is this?",
					"fontsize" : 10.0,
					"id" : "obj-29",
					"patching_rect" : [ 180.0, 250.0, 279.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)",
					"fontsize" : 10.0,
					"id" : "obj-30",
					"patching_rect" : [ 215.0, 345.0, 122.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"fontsize" : 10.0,
					"id" : "obj-31",
					"patching_rect" : [ 215.0, 330.0, 108.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions/allow",
					"fontsize" : 10.0,
					"id" : "obj-32",
					"patching_rect" : [ 45.0, 310.0, 119.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/bounds",
					"fontsize" : 10.0,
					"id" : "obj-33",
					"patching_rect" : [ 45.0, 370.0, 116.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default)",
					"fontsize" : 10.0,
					"id" : "obj-34",
					"patching_rect" : [ 215.0, 270.0, 122.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"fontsize" : 10.0,
					"id" : "obj-35",
					"patching_rect" : [ 45.0, 250.0, 115.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "menu",
					"fontsize" : 10.0,
					"id" : "obj-36",
					"patching_rect" : [ 215.0, 285.0, 117.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1",
					"fontsize" : 10.0,
					"id" : "obj-42",
					"patching_rect" : [ 215.0, 225.0, 108.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0 (default)",
					"fontsize" : 10.0,
					"id" : "obj-43",
					"patching_rect" : [ 215.0, 210.0, 122.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- determines if parameter can be ramped or not",
					"fontsize" : 10.0,
					"id" : "obj-44",
					"patching_rect" : [ 180.0, 190.0, 278.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp",
					"fontsize" : 10.0,
					"id" : "obj-45",
					"patching_rect" : [ 45.0, 185.0, 124.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-16",
					"patching_rect" : [ 15.0, 10.0, 389.0, 51.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
