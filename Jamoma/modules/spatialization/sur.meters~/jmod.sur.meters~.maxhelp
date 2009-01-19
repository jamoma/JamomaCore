{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 27.0, 56.0, 399.0, 493.0 ],
		"bglocked" : 0,
		"defrect" : [ 27.0, 56.0, 399.0, 493.0 ],
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
					"maxclass" : "newobj",
					"text" : "prepend /channels",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 35.0, 200.0, 104.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /info/channels",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 35.0, 175.0, 112.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-8",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /voices @strip 0",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 35.0, 375.0, 146.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-5",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 2,
					"presentation_rect" : [ 15.0, 15.0, 300.0, 70.0 ],
					"args" : [ "output" ],
					"numoutlets" : 1,
					"patching_rect" : [ 35.0, 400.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"name" : "jmod.sur.output~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 2,
					"presentation_rect" : [ 15.0, 15.0, 300.0, 140.0 ],
					"args" : [ "meters" ],
					"numoutlets" : 2,
					"patching_rect" : [ 35.0, 225.0, 300.0, 140.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-6",
					"name" : "jmod.sur.meters~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 2,
					"presentation_rect" : [ 15.0, 15.0, 300.0, 70.0 ],
					"args" : [ "input" ],
					"numoutlets" : 2,
					"patching_rect" : [ 35.0, 95.0, 300.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"name" : "jmod.sur.multi.input~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.meters~",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 20.0, 20.0, 228.0, 28.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a multichannel meterbridge ",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 20.0, 50.0, 306.0, 19.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 335.0, 60.0 ],
					"id" : "obj-3"
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
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-4", 1 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
