{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 746.0, 99.0, 494.0, 313.0 ],
		"bglocked" : 0,
		"defrect" : [ 746.0, 99.0, 494.0, 313.0 ],
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
					"text" : "video input",
					"fontsize" : 9.873845,
					"patching_rect" : [ 395.0, 32.0, 66.0, 18.0 ],
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
					"text" : "osc messages from algorithm",
					"fontsize" : 9.873845,
					"patching_rect" : [ 36.0, 231.0, 157.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 37.0, 213.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-3",
					"comment" : "osc messages from algorithm"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.hue",
					"fontsize" : 9.873845,
					"patching_rect" : [ 399.0, 174.0, 42.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /genframe /direct",
					"fontsize" : 9.873845,
					"patching_rect" : [ 37.0, 84.0, 172.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 399.0, 52.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"comment" : "video input"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 37.0, 60.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"comment" : "osc messages to algorithm"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "video output",
					"fontsize" : 9.873845,
					"patching_rect" : [ 392.0, 232.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 399.0, 213.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-9",
					"comment" : "video output"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /hue_angle",
					"fontsize" : 9.873845,
					"patching_rect" : [ 190.0, 120.0, 120.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "osc messages to algorithm",
					"fontsize" : 9.873845,
					"patching_rect" : [ 36.0, 39.0, 143.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 123.0, 168.0, 408.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 46.5, 168.0, 408.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 199.5, 168.0, 408.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
