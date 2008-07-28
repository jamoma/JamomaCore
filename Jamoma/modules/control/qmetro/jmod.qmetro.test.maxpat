{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 52.0, 104.0, 770.0, 560.0 ],
		"bglocked" : 0,
		"defrect" : [ 52.0, 104.0, 770.0, 560.0 ],
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
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-5",
					"patching_rect" : [ 30.0, 455.0, 39.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 420.0, 68.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b 0",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"patching_rect" : [ 235.0, 115.0, 48.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /qmetro",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"patching_rect" : [ 235.0, 90.0, 80.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route jmod.qmetro",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"patching_rect" : [ 235.0, 65.0, 105.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.receive notifications",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"patching_rect" : [ 235.0, 15.0, 188.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route module.initialized",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"patching_rect" : [ 235.0, 40.0, 127.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"patching_rect" : [ 50.0, 495.0, 67.0, 19.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.finished",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 105.0, 420.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-3",
					"patching_rect" : [ 105.0, 395.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/toggle 0",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"patching_rect" : [ 150.0, 340.0, 56.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "7",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"patching_rect" : [ 215.0, 340.0, 54.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 0 1 1000",
					"numinlets" : 5,
					"fontsize" : 10.0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"patching_rect" : [ 250.0, 310.0, 97.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /trigger",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"patching_rect" : [ 250.0, 280.0, 79.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 250",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"patching_rect" : [ 185.0, 310.0, 60.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/toggle 1",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"patching_rect" : [ 250.0, 145.0, 56.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"name" : "jmod.qmetro.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"args" : [ "/qmetro" ],
					"id" : "obj-1",
					"patching_rect" : [ 250.0, 195.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.assert.equal CorrectNumberOfInitialBangs 7",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"patching_rect" : [ 215.0, 365.0, 284.0, 19.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 446.0, 59.5, 446.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-29", 3 ],
					"hidden" : 0,
					"midpoints" : [ 273.5, 138.0, 703.0, 138.0, 703.0, 304.0, 318.0, 304.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-27", 0 ],
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 159.5, 377.0, 114.5, 377.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 159.5, 365.0, 140.0, 365.0, 140.0, 173.0, 259.5, 173.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
