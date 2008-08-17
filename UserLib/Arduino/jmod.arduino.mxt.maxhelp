{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 237.0, 44.0, 871.0, 602.0 ],
		"bglocked" : 0,
		"defrect" : [ 237.0, 44.0, 871.0, 602.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "external update command (module must be turned on)",
					"id" : "obj-72",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 441.0, 345.0, 251.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r cmd",
					"id" : "obj-70",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 9.0, 266.0, 35.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "switch for the digital output No. 3",
					"id" : "obj-69",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 545.0, 312.0, 163.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "switch for the analog output No. 1",
					"id" : "obj-68",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 545.0, 285.0, 163.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s cmd",
					"hidden" : 1,
					"id" : "obj-64",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 395.0, 379.0, 37.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-62",
					"numinlets" : 1,
					"patching_rect" : [ 390.0, 310.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/digital.3:/enable $1",
					"id" : "obj-63",
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"patching_rect" : [ 414.0, 310.0, 124.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "by default all returns are disabled to minimize the number of messages floating around. To turn on the outputs you need, use the \"enable\" messages as shown below.",
					"linecount" : 2,
					"id" : "obj-61",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 387.0, 242.0, 459.0, 31.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-34",
					"numinlets" : 1,
					"patching_rect" : [ 390.0, 283.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Return:",
					"id" : "obj-59",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 389.0, 215.0, 57.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/analog.1:/enable $1",
					"id" : "obj-60",
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"patching_rect" : [ 414.0, 284.0, 127.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack type 0 0",
					"id" : "obj-50",
					"fontsize" : 10.0,
					"numinlets" : 3,
					"patching_rect" : [ 9.0, 390.0, 70.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscinstance",
					"id" : "obj-4",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 366.0, 87.0, 18.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.arduino",
					"id" : "obj-44",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"patching_rect" : [ 7.0, 9.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "An interface module for the I/O board Arduino",
					"id" : "obj-45",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 7.0, 34.0, 330.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/update",
					"id" : "obj-1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 390.0, 347.0, 44.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-2",
					"numinlets" : 1,
					"patching_rect" : [ 496.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-3",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 199.0, 476.0, 33.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-5",
					"numinlets" : 1,
					"patching_rect" : [ 474.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-6",
					"numinlets" : 1,
					"patching_rect" : [ 452.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-7",
					"numinlets" : 1,
					"patching_rect" : [ 430.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-8",
					"numinlets" : 1,
					"patching_rect" : [ 408.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-9",
					"numinlets" : 1,
					"patching_rect" : [ 386.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-10",
					"numinlets" : 1,
					"patching_rect" : [ 364.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-11",
					"numinlets" : 1,
					"patching_rect" : [ 342.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 320.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 298.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-14",
					"numinlets" : 1,
					"patching_rect" : [ 276.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 254.0, 476.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-16",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 47.0, 476.0, 33.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-17",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 123.0, 476.0, 33.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-18",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 161.0, 476.0, 33.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-19",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 85.0, 476.0, 33.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-20",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 476.0, 33.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 0 1 2 3 4 5",
					"id" : "obj-21",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 440.0, 243.0, 17.0 ],
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 2 3 4 5 6 7 8 9 10 11 12 13",
					"id" : "obj-22",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 254.0, 440.0, 283.0, 17.0 ],
					"numoutlets" : 13,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3. Click \"on\" to receive messages.",
					"id" : "obj-23",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 121.0, 276.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /analog /digital",
					"id" : "obj-24",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 414.0, 501.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"id" : "obj-28",
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 77.0, 97.0, 13.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"handoff" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://www.arduino.cc",
					"linecount" : 2,
					"hidden" : 1,
					"id" : "obj-29",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 583.0, 66.0, 208.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Arduino",
					"id" : "obj-30",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"patching_rect" : [ 393.0, 66.0, 75.0, 27.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "USAGE:",
					"id" : "obj-31",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 7.0, 81.0, 276.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "--> webpage",
					"id" : "obj-32",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 475.0, 77.0, 70.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-33",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 88.0, 390.0, 153.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.arduino.mxt",
					"lockeddragscroll" : 1,
					"args" : [ "arduino" ],
					"id" : "obj-35",
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 289.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"name" : "jmod.arduino.maxpat",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- Max patch and Arduino Sketch originally adapted from Thomas Ouellet Fredericks' \"Simple Message Sytem\" examples. tof.danslchamp.org",
					"linecount" : 2,
					"id" : "obj-36",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 391.0, 126.0, 339.0, 27.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1. Program Arudnio with included code (see 3rd party external folder).",
					"id" : "obj-37",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 97.0, 354.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2. Click \"init\" and set the desired serial port.",
					"id" : "obj-38",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 109.0, 324.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Notes:",
					"id" : "obj-39",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 391.0, 105.0, 100.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- Serial writes are possible but not implemented here.",
					"id" : "obj-40",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 391.0, 155.0, 316.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- Do not write to digital pin 7 on the BT module, as this will cause a reset.",
					"id" : "obj-41",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 391.0, 171.0, 371.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- Digital pins 0 and 1 are reserved for serial/USB/Bluetooth communication.",
					"id" : "obj-42",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 391.0, 187.0, 367.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-46",
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 4.0, 389.0, 51.0 ],
					"rounded" : 15,
					"numoutlets" : 0,
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-50", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 2 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 3 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 4 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 5 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 6 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 7 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 8 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 9 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 10 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 11 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 3 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [ 86.5, 384.0, 231.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 3 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 4 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 5 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
