{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 317.0, 369.0, 600.0, 426.0 ],
		"bglocked" : 0,
		"defrect" : [ 317.0, 369.0, 600.0, 426.0 ],
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
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 192.0, 40.0, 41.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1 $1 ramp 2000",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"patching_rect" : [ 228.0, 41.0, 144.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-3",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 194.0, 63.0, 41.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:stepsize $1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"patching_rect" : [ 227.0, 63.0, 144.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-5",
					"hidden" : 1,
					"patching_rect" : [ 411.0, 213.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "change this parameter's datatype",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-6",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 196.0, 115.0, 202.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output all attributes of this parameter :",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 8.0, 128.0, 211.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "change this parameter's rampmode",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 9.0, 112.0, 191.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Addressing attributes Properties",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-9",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 4.0, 2.0, 298.0, 26.0 ],
					"fontsize" : 16.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:dec",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"patching_rect" : [ 7.0, 48.0, 165.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:inc",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"patching_rect" : [ 7.0, 31.0, 168.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:dump",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"patching_rect" : [ 194.0, 129.0, 161.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:type msg_int",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"patching_rect" : [ 194.0, 100.0, 177.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:type msg_float",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"patching_rect" : [ 194.0, 84.0, 177.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:ramp linear",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"patching_rect" : [ 7.0, 97.0, 172.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:ramp none",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"patching_rect" : [ 7.0, 81.0, 171.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "increase/decrease value by stepsize :",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-18",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 20.0, 63.0, 228.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-10",
					"patching_rect" : [ 0.0, 0.0, 373.0, 27.0 ],
					"rounded" : 15,
					"numinlets" : 1,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-19",
					"patching_rect" : [ 0.0, 28.0, 373.0, 123.0 ],
					"rounded" : 15,
					"numinlets" : 1,
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
