{
	"patcher" : 	{
		"rect" : [ 34.0, 135.0, 556.0, 375.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 34.0, 135.0, 556.0, 375.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "osc messages to algorithm",
					"patching_rect" : [ 41.0, 60.0, 143.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal inlet 2",
					"patching_rect" : [ 409.0, 60.0, 74.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal outlet 2",
					"patching_rect" : [ 404.0, 287.0, 81.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 61.0, 88.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : "osc messages to algorithm"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 59.0, 266.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 0,
					"comment" : "osc messages from algorithm"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 424.0, 266.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 0,
					"comment" : "signal outlet 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 301.0, 266.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 0,
					"comment" : "signal outlet 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 424.0, 88.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : "signal inlet 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 301.0, 88.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"id" : "obj-9",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : "signal inlet 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute \/param_a \/param_b",
					"patching_rect" : [ 61.0, 153.0, 185.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "degrade~",
					"patching_rect" : [ 424.0, 233.0, 59.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-11",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "degrade~",
					"patching_rect" : [ 301.0, 233.0, 59.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-12",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "[in 1] receives OSC messages. These should be routed to the appropriate places.",
					"patching_rect" : [ 94.0, 121.0, 415.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This is an algorithm for a stereo module.",
					"patching_rect" : [ 17.0, 22.0, 213.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "osc messages from algorithm",
					"patching_rect" : [ 50.0, 287.0, 157.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal outlet 1",
					"patching_rect" : [ 294.0, 287.0, 81.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal inlet 1",
					"patching_rect" : [ 288.0, 60.0, 74.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 70.5, 204.0, 330.5, 204.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-12", 2 ],
					"hidden" : 0,
					"midpoints" : [ 153.5, 197.0, 350.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 70.5, 204.0, 453.5, 204.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-11", 2 ],
					"hidden" : 0,
					"midpoints" : [ 153.5, 197.0, 473.5, 197.0 ]
				}

			}
 ]
	}

}
