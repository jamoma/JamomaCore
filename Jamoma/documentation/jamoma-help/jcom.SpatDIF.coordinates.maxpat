{
	"patcher" : 	{
		"rect" : [ 58.0, 50.0, 524.0, 703.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 58.0, 50.0, 524.0, 703.0 ],
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
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 248.0, 182.0, 57.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-2",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 248.0, 161.0, 80.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.ambimonitor2xyz",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-3",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 241.0, 139.0, 124.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.xyz2ambimonitor",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 241.0, 121.0, 124.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.ambimonitor2aed",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 112.0, 139.0, 125.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.aed2ambimonitor",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-6",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 112.0, 121.0, 125.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.xyz2aed",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 28.0, 139.0, 79.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.aed2xyz",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 28.0, 121.0, 79.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "front view (x\/z)",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 417.0, 81.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "down",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 370.0, 596.0, 30.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "left",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 286.0, 520.0, 24.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "right",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 455.0, 520.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "up",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 376.0, 442.0, 19.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "+x",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-14",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 430.0, 520.0, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-x",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-15",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 317.0, 520.0, 19.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-z",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-16",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 376.0, 577.0, 18.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "+z",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-17",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 376.0, 460.0, 19.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 0,
					"rounded" : 20,
					"bgcolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
					"patching_rect" : [ 313.0, 455.0, 140.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "top view (x\/y)",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 203.0, 78.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rear",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 372.0, 382.0, 30.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "left",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-21",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 286.0, 306.0, 24.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "right",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 455.0, 306.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "front",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 369.0, 228.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "+x",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-24",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 430.0, 306.0, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-x",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-25",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 317.0, 306.0, 19.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-y",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-26",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 376.0, 364.0, 19.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "+y",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-27",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 376.0, 247.0, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 0,
					"rounded" : 20,
					"bgcolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
					"patching_rect" : [ 313.0, 241.0, 140.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "front view (elevation)",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-29",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 83.0, 417.0, 105.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "down",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 115.0, 596.0, 30.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "left",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-31",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 31.0, 520.0, 24.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "right",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-32",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 200.0, 520.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "up",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 121.0, 442.0, 19.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0°",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-34",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 178.0, 520.0, 19.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0°",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-35",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 62.0, 520.0, 19.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-90°",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-36",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 115.0, 577.0, 32.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "+90°",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-37",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 115.0, 460.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-38",
					"numoutlets" : 0,
					"rounded" : 20,
					"bgcolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
					"patching_rect" : [ 58.0, 455.0, 140.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "top view (azimuth)",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-39",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 83.0, 203.0, 95.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rear",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-40",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 117.0, 382.0, 30.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "left",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-41",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 31.0, 306.0, 24.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "right",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-42",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 200.0, 306.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "front",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-43",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 114.0, 228.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "+90°",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-44",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 166.0, 306.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-90°",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-45",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 62.0, 306.0, 32.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "+\/-180°",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-46",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 363.0, 50.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0°",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-47",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 121.0, 246.0, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-48",
					"numoutlets" : 0,
					"rounded" : 20,
					"bgcolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
					"patching_rect" : [ 58.0, 241.0, 140.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "SpatDIF uses spherical and Cartesian coordinate systems based on navigation\/topology conventions. These also seem to be common in contemporary music practises.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-49",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 21.0, 66.0, 453.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "angles can take any positive or negative value",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-50",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 26.0, 174.0, 266.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The following utilities are available for mapping and convertion of spatial data in Jamoma:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-51",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 99.0, 459.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "SpatDIF Coordinates",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-52",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999,
					"patching_rect" : [ 19.0, 19.0, 188.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Recommended coordinate systems in the SpatDIF Spatial Sound Description Interchange Format",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-53",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 39.0, 493.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-54",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 14.0, 14.0, 498.0, 49.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-55",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"background" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 8.0, 671.0, 22.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launch_browser http:\/\/www.spatdif.org",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-56",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"background" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 33.0, 667.0, 217.0, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"items" : "www.spatdif.org",
					"id" : "obj-57",
					"numoutlets" : 3,
					"types" : [  ],
					"textcolor" : [ 0.164706, 0.121569, 0.913725, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"menumode" : 2,
					"background" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 21.0, 642.0, 126.0, 17.0 ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[1]",
					"numinlets" : 1,
					"id" : "obj-58",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 22.0, 202.0, 218.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-59",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 21.0, 201.0, 220.0, 208.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[2]",
					"numinlets" : 1,
					"id" : "obj-60",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 22.0, 416.0, 218.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-61",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 21.0, 415.0, 220.0, 208.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[3]",
					"numinlets" : 1,
					"id" : "obj-62",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 277.0, 202.0, 218.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-63",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 276.0, 201.0, 220.0, 208.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[4]",
					"numinlets" : 1,
					"id" : "obj-64",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 277.0, 416.0, 218.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-65",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 276.0, 415.0, 220.0, 208.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
