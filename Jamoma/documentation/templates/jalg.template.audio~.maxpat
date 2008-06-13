{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 68.0, 360.0, 556.0, 375.0 ],
		"bglocked" : 0,
		"defrect" : [ 68.0, 360.0, 556.0, 375.0 ],
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
					"maxclass" : "comment",
					"text" : "osc messages to algorithm",
					"fontsize" : 10.0,
					"patching_rect" : [ 41.0, 60.0, 146.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal inlet 2",
					"fontsize" : 10.0,
					"patching_rect" : [ 409.0, 60.0, 76.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal outlet 2",
					"fontsize" : 10.0,
					"patching_rect" : [ 404.0, 287.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 61.0, 88.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"comment" : "osc messages to algorithm"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 59.0, 266.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-5",
					"comment" : "osc messages from algorithm"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 424.0, 266.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-6",
					"comment" : "signal outlet 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 301.0, 266.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-7",
					"comment" : "signal outlet 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 424.0, 88.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"comment" : "signal inlet 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 301.0, 88.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"comment" : "signal inlet 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /this_parameter /this_message",
					"fontsize" : 9.873845,
					"patching_rect" : [ 61.0, 153.0, 241.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "degrade~",
					"fontsize" : 9.873845,
					"patching_rect" : [ 424.0, 233.0, 59.0, 18.0 ],
					"numinlets" : 3,
					"numoutlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "degrade~",
					"fontsize" : 9.873845,
					"patching_rect" : [ 301.0, 233.0, 59.0, 18.0 ],
					"numinlets" : 3,
					"numoutlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "[in 1] receives OSC messages. These should be routed to the appropriate places.",
					"fontsize" : 10.0,
					"patching_rect" : [ 94.0, 121.0, 421.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This is an algorithm for a stereo module.",
					"fontsize" : 10.0,
					"patching_rect" : [ 17.0, 22.0, 217.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "osc messages from algorithm",
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 287.0, 160.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal outlet 1",
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 287.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal inlet 1",
					"fontsize" : 10.0,
					"patching_rect" : [ 288.0, 60.0, 76.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"midpoints" : [ 181.5, 197.0, 350.5, 197.0 ]
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
					"midpoints" : [ 181.5, 197.0, 473.5, 197.0 ]
				}

			}
 ]
	}

}
