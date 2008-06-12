{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 232.0, 82.0, 890.0, 580.0 ],
		"bglocked" : 0,
		"defrect" : [ 232.0, 82.0, 890.0, 580.0 ],
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
					"text" : "#/midi:- : like #/midi:dec",
					"fontsize" : 9.873845,
					"patching_rect" : [ 32.0, 184.0, 141.0, 18.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "decremental",
					"fontsize" : 9.873845,
					"patching_rect" : [ 771.0, 192.0, 82.0, 18.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/gain/midi:-",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 771.0, 213.0, 71.0, 16.0 ],
					"id" : "obj-3",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/gain/midi:+",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 686.0, 214.0, 74.0, 16.0 ],
					"id" : "obj-4",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.gui",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 714.0, 508.0, 53.0, 16.0 ],
					"id" : "obj-5",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.hub",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 652.0, 508.0, 57.0, 16.0 ],
					"id" : "obj-6",
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
					"patching_rect" : [ 564.0, 508.0, 82.0, 16.0 ],
					"id" : "obj-7",
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
					"patching_rect" : [ 471.0, 508.0, 90.0, 16.0 ],
					"id" : "obj-8",
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
					"patching_rect" : [ 481.0, 542.0, 78.0, 18.0 ],
					"id" : "obj-9",
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
					"patching_rect" : [ 481.0, 562.0, 55.0, 18.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 312.0, 54.0, 18.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 337.0, 79.0, 28.0 ],
					"id" : "obj-12",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MIDI",
					"fontsize" : 9.873845,
					"patching_rect" : [ 568.0, 192.0, 36.0, 18.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "127",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 584.0, 214.0, 31.0, 16.0 ],
					"id" : "obj-14",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 568.0, 214.0, 18.0, 16.0 ],
					"id" : "obj-15",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/gain/midi $1 3000",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 568.0, 236.0, 106.0, 16.0 ],
					"id" : "obj-16",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 507.0, 214.0, 18.0, 16.0 ],
					"id" : "obj-17",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "-12",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 214.0, 31.0, 16.0 ],
					"id" : "obj-18",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/gain $1 3000",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 236.0, 81.0, 16.0 ],
					"id" : "obj-19",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s incoming",
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 273.0, 67.0, 18.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r incoming",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 65.0, 395.0, 67.0, 18.0 ],
					"id" : "obj-21",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/gain/midi:dec",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 778.0, 236.0, 83.0, 16.0 ],
					"id" : "obj-22",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/gain/midi:inc",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 691.0, 236.0, 80.0, 16.0 ],
					"id" : "obj-23",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 126.0, 504.0, 182.0, 16.0 ],
					"id" : "obj-24",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 201.0, 477.0, 77.0, 18.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 126.0, 477.0, 74.0, 18.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"varname" : "gain_master",
					"outlettype" : [ "" ],
					"patching_rect" : [ 64.0, 352.0, 144.0, 18.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"orientation" : 1,
					"numoutlets" : 1,
					"size" : 158.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.parameter.gain_help @size 1U-half @module_type audio.no_panel @description demo",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 45.0, 416.0, 290.0, 30.0 ],
					"id" : "obj-28",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar gain_master",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 102.0, 109.0, 18.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain.mxt",
					"text" : "jcom.parameter.gain.mxt gain @description \"master gain\"",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 123.0, 337.0, 18.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 45.0, 470.0, 15.0, 15.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 395.0, 15.0, 15.0 ],
					"id" : "obj-32",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "IMPORTANT:",
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 241.0, 438.0, 18.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- #2/midi:dec: decrease MIDI gain value by one (message)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 21.0, 171.0, 308.0, 18.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- #/midi:inc : increase MIDI gain value by one (message)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 143.0, 299.0, 18.0 ],
					"id" : "obj-35",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- #2/midi: gain as MIDI values (parameter - stored as part of the state)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 130.0, 370.0, 18.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- #2: gain as dB values (message)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 117.0, 184.0, 18.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter.gain is special in the sense that gain levels can be adjusted using various messages, or by a GUI. All kinds of messages are mapped to MIDI values internally, so that they can all be dealt with by the same \"jcom.line.mxt\".",
					"linecount" : 3,
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 197.0, 427.0, 42.0 ],
					"id" : "obj-38",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter.gain",
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 26.0, 28.0, 189.0, 28.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Handling audio gain levels",
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 27.0, 54.0, 281.0, 18.0 ],
					"id" : "obj-40",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 21.0, 22.0, 389.0, 51.0 ],
					"id" : "obj-41",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter.gain is a dedicated component for standard handling of gain levels in Jamoma. It offers 4 ways of adjusting a gain level given by 2nd argument to component:",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 90.0, 467.0, 30.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For this component to work properly, you have to avoid output from being fed back to the inlet, else the output will kill any ongoing ramp. If jcom.parameter.gain outlet/inlet is connected to a GUI inlet/outlet, use the \"set\" mesage for updating GUI display when jcom.parameter.gain value change.",
					"linecount" : 4,
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 256.0, 412.0, 54.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dB",
					"fontsize" : 9.873845,
					"patching_rect" : [ 479.0, 192.0, 26.0, 18.0 ],
					"id" : "obj-44",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See also",
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 488.0, 115.0, 18.0 ],
					"id" : "obj-45",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "incremental",
					"fontsize" : 9.873845,
					"patching_rect" : [ 686.0, 192.0, 82.0, 18.0 ],
					"id" : "obj-46",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "#/midi:+ : like #/midi:inc",
					"fontsize" : 9.873845,
					"patching_rect" : [ 32.0, 157.0, 141.0, 18.0 ],
					"id" : "obj-48",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jcom.gui.mxt",
					"patching_rect" : [ 45.0, 325.0, 256.0, 60.0 ],
					"args" : [ "90880_" ],
					"id" : "obj-47",
					"numinlets" : 0,
					"name" : "jcom.gui.mxt",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 593.5, 233.0, 577.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 780.5, 235.0, 775.0, 235.0, 775.0, 262.0, 489.5, 262.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 695.5, 235.0, 689.0, 235.0, 689.0, 262.0, 489.5, 262.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 787.5, 262.0, 489.5, 262.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 700.5, 262.0, 489.5, 262.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 577.5, 262.0, 489.5, 262.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 516.5, 233.0, 489.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 145.0, 473.0, 145.0, 473.0, 96.0, 489.5, 96.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 210.5, 499.0, 135.5, 499.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 461.0, 135.5, 461.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
