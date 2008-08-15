{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 69.0, 1360.0, 707.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 1360.0, 707.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
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
					"text" : "Required as an escape if we don't want the patch to fire.",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-8",
					"fontsize" : 10.0,
					"patching_rect" : [ 145.0, 155.0, 295.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 2",
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 120.0, 68.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch2",
					"id" : "obj-4",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 90.0, 150.0, 39.0, 32.0 ],
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /editing_this_module",
					"id" : "obj-7",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 110.0, 120.0, 192.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route jmod.parameter.dataspaces.test",
					"id" : "obj-15",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 110.0, 100.0, 200.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.receive notifications",
					"id" : "obj-13",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 110.0, 60.0, 188.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route module.initialized",
					"id" : "obj-14",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 110.0, 80.0, 127.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.assert.equal TESTparameter/dataspace/color/hsl2native 0. 255. 0.",
					"id" : "obj-25",
					"fontsize" : 10.0,
					"patching_rect" : [ 835.0, 290.0, 397.0, 19.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"id" : "obj-24",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 270.0, 425.0, 48.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tragger b",
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 270.0, 260.0, 55.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This cause a crash, as reported in bug 2010710",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-1",
					"fontsize" : 10.0,
					"patching_rect" : [ 595.0, 220.0, 253.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/color/hsv2native 120. 100. 50.",
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 270.0, 310.0, 171.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.hub",
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 270.0, 340.0, 51.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter color/hsv2native @type msg_list @dataspace color @dataspace/unit/active hsl @dataspace/unit/native rgb",
					"linecount" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 595.0, 250.0, 495.0, 31.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
