{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 518.0, 58.0, 365.0, 266.0 ],
		"bglocked" : 0,
		"defrect" : [ 518.0, 58.0, 365.0, 266.0 ],
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
					"text" : "deferlow",
					"fontsize" : 10.970939,
					"patching_rect" : [ 270.0, 80.0, 58.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"presentation_rect" : [ 32.0, 105.0, 0.0, 0.0 ],
					"patching_rect" : [ 30.0, 105.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"comment" : "OSC"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"fontsize" : 9.0,
					"patching_rect" : [ 270.0, 55.0, 27.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"bgcolor" : [ 0.819608, 0.819608, 0.819608, 1.0 ],
					"markercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
					"bwidthcolor" : [ 0.298039, 0.423529, 0.67451, 1.0 ],
					"patching_rect" : [ 270.0, 115.0, 64.0, 32.0 ],
					"numinlets" : 8,
					"hbwidthcolor" : [ 0.823529, 0.290196, 0.211765, 1.0 ],
					"numoutlets" : 7,
					"hcurvecolor" : [ 1.0, 0.086275, 0.086275, 1.0 ],
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"id" : "obj-10",
					"fgcolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"textcolor" : [  ],
					"nfilters" : 1,
					"setfilter" : [ 0, 5, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 45.0, 210.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-1",
					"comment" : "OSC"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 190.0, 210.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-2",
					"comment" : "signal 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 95.0, 210.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-3",
					"comment" : "signal 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 190.0, 105.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"comment" : "signal 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 95.0, 105.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"comment" : "signal 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 270.0, 15.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"comment" : "OSC"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cascade~",
					"fontsize" : 10.0,
					"patching_rect" : [ 190.0, 160.0, 59.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Verdana",
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cascade~",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 160.0, 59.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Verdana",
					"id" : "obj-8"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 287.5, 109.0, 279.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
