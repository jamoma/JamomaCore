{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 257.0, 283.0, 783.0, 412.0 ],
		"bglocked" : 0,
		"defrect" : [ 257.0, 283.0, 783.0, 412.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 9.873845,
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
					"text" : "thispatcher",
					"patching_rect" : [ 20.0, 135.0, 67.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.finished",
					"patching_rect" : [ 20.0, 110.0, 102.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"patching_rect" : [ 130.0, 59.0, 40.0, 19.0 ],
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"patching_rect" : [ 130.0, 30.0, 64.0, 19.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "goof 87 hug me",
					"patching_rect" : [ 370.0, 150.0, 101.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.assert.equal list_that_starts_with_a_sym_test goof 87 hug me",
					"patching_rect" : [ 370.0, 170.0, 378.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "43 a b",
					"patching_rect" : [ 311.0, 181.0, 49.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.assert.equal list_that_starts_with_a_number_test 43 a b",
					"patching_rect" : [ 311.0, 200.0, 348.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "yo!!",
					"patching_rect" : [ 265.0, 209.0, 35.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.assert.equal sym_test_fail yo! @reverse 1",
					"patching_rect" : [ 265.0, 228.0, 274.0, 19.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "yo!",
					"patching_rect" : [ 226.0, 235.0, 31.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.assert.equal sym_test yo!",
					"patching_rect" : [ 226.0, 254.0, 192.0, 19.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "23.2",
					"patching_rect" : [ 180.0, 260.0, 40.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.assert.equal float_test_fail 23.1 @reverse 1",
					"patching_rect" : [ 180.0, 280.0, 282.0, 19.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "23.1",
					"patching_rect" : [ 134.0, 288.0, 40.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.assert.equal float_test 23.1",
					"patching_rect" : [ 134.0, 307.0, 200.0, 19.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "24",
					"patching_rect" : [ 102.0, 315.0, 26.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.assert.equal int_test_fail 23 @reverse 1",
					"patching_rect" : [ 102.0, 334.0, 263.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "23",
					"patching_rect" : [ 70.0, 341.0, 26.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.assert.equal int_test 23",
					"patching_rect" : [ 70.0, 360.0, 183.0, 19.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
