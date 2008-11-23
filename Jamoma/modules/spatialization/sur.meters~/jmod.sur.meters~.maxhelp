{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 371.0, 63.0, 528.0, 547.0 ],
		"bglocked" : 0,
		"defrect" : [ 371.0, 63.0, 528.0, 547.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"presentation_rect" : [ 15.0, 15.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"args" : [ "control" ],
					"patching_rect" : [ 352.0, 100.0, 150.0, 70.0 ],
					"id" : "obj-10",
					"name" : "jmod.control.maxpat",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /voices",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 39.0, 195.0, 91.0, 19.0 ],
					"id" : "obj-9",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /info/channels",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 39.0, 174.0, 112.0, 19.0 ],
					"id" : "obj-8",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /voices @strip 0",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 39.0, 359.0, 146.0, 19.0 ],
					"id" : "obj-5",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"presentation_rect" : [ 15.0, 15.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"args" : [ "output" ],
					"patching_rect" : [ 39.0, 380.0, 300.0, 70.0 ],
					"id" : "obj-4",
					"name" : "jmod.sur.output~.maxpat",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 2,
					"presentation_rect" : [ 15.0, 15.0, 300.0, 140.0 ],
					"outlettype" : [ "", "" ],
					"args" : [ "meters" ],
					"patching_rect" : [ 39.0, 217.0, 300.0, 140.0 ],
					"id" : "obj-6",
					"name" : "jmod.sur.meters~.maxpat",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 2,
					"presentation_rect" : [ 15.0, 15.0, 300.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"args" : [ "input" ],
					"patching_rect" : [ 39.0, 100.0, 300.0, 70.0 ],
					"id" : "obj-7",
					"name" : "jmod.sur.multi.input~.maxpat",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.meters~",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 20.0, 228.0, 28.0 ],
					"id" : "obj-1",
					"fontsize" : 18.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a multichannel meterbridge ",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 50.0, 306.0, 19.0 ],
					"id" : "obj-2",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 335.0, 60.0 ],
					"id" : "obj-3",
					"rounded" : 15,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
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
 ]
	}

}
