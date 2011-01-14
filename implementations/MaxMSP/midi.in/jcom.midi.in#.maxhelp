{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 29.0, 69.0, 1010.0, 700.0 ],
		"bglocked" : 0,
		"defrect" : [ 29.0, 69.0, 1010.0, 700.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 13.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica Neue Light",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"fontsize" : 13.0,
					"patching_rect" : [ 550.0, 270.0, 36.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-28",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 13.0,
					"presentation_rect" : [ 593.0, 326.0, 0.0, 0.0 ],
					"patching_rect" : [ 595.0, 325.0, 64.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route getAvailableDeviceNames",
					"fontsize" : 13.0,
					"presentation_rect" : [ 488.0, 511.0, 0.0, 0.0 ],
					"patching_rect" : [ 490.0, 510.0, 192.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 13.0,
					"presentation_rect" : [ 508.0, 426.0, 0.0, 0.0 ],
					"items" : [ "USB Axiom 25 Port 1", ",", "to MaxMSP 1", ",", "to MaxMSP 2" ],
					"types" : [  ],
					"patching_rect" : [ 510.0, 425.0, 181.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-20",
					"fontname" : "Helvetica Neue Light",
					"rounded" : 19,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t getAvailableDeviceNames clear",
					"fontsize" : 13.0,
					"presentation_rect" : [ 593.0, 376.0, 0.0, 0.0 ],
					"patching_rect" : [ 595.0, 375.0, 197.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 2,
					"outlettype" : [ "", "clear" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 593.0, 351.0, 0.0, 0.0 ],
					"patching_rect" : [ 595.0, 350.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "iter",
					"fontsize" : 13.0,
					"presentation_rect" : [ 488.0, 541.0, 0.0, 0.0 ],
					"patching_rect" : [ 490.0, 540.0, 28.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-24",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"fontsize" : 13.0,
					"presentation_rect" : [ 488.0, 566.0, 0.0, 0.0 ],
					"patching_rect" : [ 490.0, 565.0, 106.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-25",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.midi.out#",
					"fontsize" : 13.0,
					"patching_rect" : [ 420.0, 480.0, 95.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-26",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 2,
					"outlettype" : [ "graph.connect", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "device $1",
					"fontsize" : 13.0,
					"presentation_rect" : [ 508.0, 456.0, 0.0, 0.0 ],
					"patching_rect" : [ 510.0, 455.0, 64.0, 20.0 ],
					"numinlets" : 2,
					"id" : "obj-27",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "next, we need a jcom.midi.filter# that filters notes (for example) put their values into the value key.",
					"linecount" : 2,
					"fontsize" : 13.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 50.0, 545.0, 293.0, 38.0 ],
					"numinlets" : 1,
					"id" : "obj-21",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 13.0,
					"patching_rect" : [ 715.0, 225.0, 50.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-18",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 13.0,
					"patching_rect" : [ 655.0, 225.0, 50.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-17",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 13.0,
					"patching_rect" : [ 595.0, 225.0, 50.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "notein",
					"fontsize" : 13.0,
					"patching_rect" : [ 595.0, 200.0, 139.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 50.0, 405.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print b",
					"fontsize" : 13.0,
					"patching_rect" : [ 70.0, 405.0, 47.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.log#",
					"fontsize" : 13.0,
					"patching_rect" : [ 50.0, 375.0, 67.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 13.0,
					"patching_rect" : [ 225.0, 40.0, 64.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route getAvailableDeviceNames",
					"fontsize" : 13.0,
					"patching_rect" : [ 120.0, 225.0, 192.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 13.0,
					"items" : [ "USB Axiom 25 Port 1", ",", "USB Axiom 25 Port 2", ",", "from MaxMSP 1", ",", "from MaxMSP 2" ],
					"types" : [  ],
					"patching_rect" : [ 140.0, 140.0, 181.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"fontname" : "Helvetica Neue Light",
					"rounded" : 19,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t getAvailableDeviceNames clear",
					"fontsize" : 13.0,
					"patching_rect" : [ 225.0, 90.0, 197.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 2,
					"outlettype" : [ "", "clear" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 225.0, 65.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "iter",
					"fontsize" : 13.0,
					"patching_rect" : [ 120.0, 255.0, 28.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"fontsize" : 13.0,
					"patching_rect" : [ 120.0, 280.0, 106.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.midi.in#",
					"fontsize" : 13.0,
					"patching_rect" : [ 50.0, 195.0, 89.0, 22.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 2,
					"outlettype" : [ "graph.connect", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "device $1",
					"fontsize" : 13.0,
					"patching_rect" : [ 140.0, 170.0, 64.0, 20.0 ],
					"numinlets" : 2,
					"id" : "obj-14",
					"fontname" : "Helvetica Neue Light",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 604.5, 409.0, 429.5, 409.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 600.5, 450.5, 519.5, 450.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 499.5, 604.0, 733.0, 604.0, 733.0, 420.0, 519.5, 420.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 782.5, 416.0, 519.5, 416.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 412.5, 131.0, 149.5, 131.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 124.0, 59.5, 124.0 ]
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
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 319.0, 363.0, 319.0, 363.0, 135.0, 149.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 230.5, 165.5, 149.5, 165.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
