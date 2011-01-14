{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 29.0, 69.0, 473.0, 462.0 ],
		"bglocked" : 0,
		"defrect" : [ 29.0, 69.0, 473.0, 462.0 ],
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
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 50.0, 405.0, 20.0, 20.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print b",
					"fontname" : "Helvetica Neue Light",
					"patching_rect" : [ 70.0, 405.0, 47.0, 22.0 ],
					"id" : "obj-8",
					"fontsize" : 13.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.log#",
					"fontname" : "Helvetica Neue Light",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 50.0, 375.0, 67.0, 22.0 ],
					"id" : "obj-6",
					"fontsize" : 13.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Helvetica Neue Light",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 225.0, 40.0, 64.0, 22.0 ],
					"id" : "obj-13",
					"fontsize" : 13.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route getAvailableDeviceNames",
					"fontname" : "Helvetica Neue Light",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 120.0, 225.0, 192.0, 22.0 ],
					"id" : "obj-12",
					"fontsize" : 13.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Helvetica Neue Light",
					"items" : [ "USB Axiom 25 Port 1", ",", "USB Axiom 25 Port 2", ",", "from MaxMSP 1", ",", "from MaxMSP 2" ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 140.0, 140.0, 181.0, 22.0 ],
					"id" : "obj-11",
					"fontsize" : 13.0,
					"rounded" : 19,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t getAvailableDeviceNames clear",
					"fontname" : "Helvetica Neue Light",
					"outlettype" : [ "", "clear" ],
					"patching_rect" : [ 225.0, 90.0, 197.0, 22.0 ],
					"id" : "obj-10",
					"fontsize" : 13.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 225.0, 65.0, 20.0, 20.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "iter",
					"fontname" : "Helvetica Neue Light",
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 255.0, 28.0, 22.0 ],
					"id" : "obj-5",
					"fontsize" : 13.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"fontname" : "Helvetica Neue Light",
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 280.0, 106.0, 22.0 ],
					"id" : "obj-4",
					"fontsize" : 13.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.midi.in#",
					"fontname" : "Helvetica Neue Light",
					"outlettype" : [ "graph.connect", "" ],
					"patching_rect" : [ 50.0, 195.0, 89.0, 22.0 ],
					"id" : "obj-1",
					"fontsize" : 13.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "device $1",
					"fontname" : "Helvetica Neue Light",
					"outlettype" : [ "" ],
					"patching_rect" : [ 140.0, 170.0, 64.0, 20.0 ],
					"id" : "obj-14",
					"fontsize" : 13.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
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
 ]
	}

}
