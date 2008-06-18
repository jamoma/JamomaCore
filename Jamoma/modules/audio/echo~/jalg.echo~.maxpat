{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 136.0, 181.0, 838.0, 565.0 ],
		"bglocked" : 0,
		"defrect" : [ 136.0, 181.0, 838.0, 565.0 ],
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
					"maxclass" : "outlet",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 464.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-2",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 278.0, 52.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 377.0, 464.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 278.0, 464.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-5",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 477.0, 52.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-6",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 31.0, 52.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tap.limi~",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 278.0, 410.0, 209.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "signal", "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "biquad~",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 6,
					"numoutlets" : 1,
					"patching_rect" : [ 477.0, 386.0, 79.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.2",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 416.0, 285.0, 42.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tapout~ 750",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 477.0, 355.0, 71.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tapin~ 10001",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 477.0, 321.0, 76.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "tapconnect" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dbtoa",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 692.0, 301.0, 37.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"dbdisplay" : 0,
					"hcurvecolor" : [ 1.0, 0.086275, 0.086275, 1.0 ],
					"fgcolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"bgcolor" : [ 0.819608, 0.819608, 0.819608, 1.0 ],
					"id" : "obj-13",
					"numdisplay" : 0,
					"numinlets" : 8,
					"numoutlets" : 7,
					"bwidthcolor" : [ 0.298039, 0.423529, 0.67451, 1.0 ],
					"patching_rect" : [ 592.0, 332.0, 97.0, 34.0 ],
					"fontsize" : 8.998901,
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"textcolor" : [  ],
					"markercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
					"nfilters" : 1,
					"setfilter" : [ 0, 5, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /filtertype /cf /filtergain /q",
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 5,
					"patching_rect" : [ 592.0, 278.0, 214.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "biquad~",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 6,
					"numoutlets" : 1,
					"patching_rect" : [ 278.0, 386.0, 79.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /left /right /maxdelay /feedback",
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 5,
					"patching_rect" : [ 31.0, 102.0, 242.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.2",
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 319.0, 285.0, 42.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tapout~ 250",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 278.0, 355.0, 71.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tapin~ 10001",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 278.0, 321.0, 76.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "tapconnect" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 287.5, 434.0, 254.0, 434.0, 254.0, 276.0, 328.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 382.5, 434.0, 569.0, 434.0, 569.0, 275.0, 425.5, 275.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 3 ],
					"destination" : [ "obj-13", 7 ],
					"hidden" : 0,
					"midpoints" : [ 747.75, 327.0, 679.5, 327.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 6 ],
					"hidden" : 0,
					"midpoints" : [ 701.5, 324.0, 668.357117, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-13", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 4 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 263.5, 128.0, 601.5, 128.0 ]
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 601.5, 381.0, 486.5, 381.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 96.25, 346.0, 486.5, 346.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 152.0, 231.0, 486.5, 231.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 3 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [ 207.75, 163.0, 448.5, 163.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 3 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 207.75, 165.0, 351.5, 165.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 601.5, 379.0, 287.5, 379.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 40.5, 348.0, 287.5, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 152.0, 233.0, 287.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
