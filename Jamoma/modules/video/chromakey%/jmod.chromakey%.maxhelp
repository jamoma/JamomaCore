{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 111.0, 44.0, 1040.0, 680.0 ],
		"bglocked" : 0,
		"defrect" : [ 111.0, 44.0, 1040.0, 680.0 ],
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
					"text" : "jmod.chromakey% measures the chromatic distance of all of the left input's cells(pixels) with a reference color. the total distance is calculated by summing the absolute value of each color channel's distance from the reference color's corresponding color channel. if the distance is less than or equal to the tolerated distance(tol), the right input cell is multiplied by maxkey. if the distance is greater than tol, but less than tol + fade, some value between minkey and maxkey is applied. any values of greater distance, and the right input cell is multiplied by minkey. the left input is always multiplied by the additive inverse of the left input's multiplicand.",
					"linecount" : 9,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 419.0, 375.0, 114.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Possible to chose the color with the R G and B values or by a click in the left screen (which will make the image appear) or using the color swatch",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 379.0, 371.0, 30.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.chromakey% works with all data types, any number of planes, but the planecount of all inputs and outputs must be equal.",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 541.0, 345.0, 30.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for char data, the floating point input 0-1 is scaled to the range 0 to 255, for long data, the floating point input is converted to int(truncated) for color, tol, and fade. long mode 0 output is in the range 0-255.",
					"linecount" : 3,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.0, 568.0, 369.0, 42.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 412.0, 15.0, 15.0 ],
					"id" : "obj-5",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.op%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 412.0, 93.0, 18.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/alpha $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 14.0, 431.0, 73.0, 16.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 15.0, 374.0, 35.0, 18.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.op%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 373.0, 93.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/maxkey $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 14.0, 392.0, 73.0, 16.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 15.0, 337.0, 35.0, 18.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.op%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 336.0, 93.0, 18.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/minkey $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 14.0, 355.0, 73.0, 16.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 15.0, 299.0, 35.0, 18.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.op%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 298.0, 93.0, 18.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/fade $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 14.0, 317.0, 73.0, 16.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 16.0, 264.0, 35.0, 18.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.op%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 61.0, 262.0, 93.0, 18.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/tolerance $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 282.0, 75.0, 16.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%2",
					"args" : [ "/input%2" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 617.0, 59.0, 300.0, 70.0 ],
					"id" : "obj-20",
					"outlettype" : [ "", "" ],
					"name" : "jmod.input%.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%1",
					"args" : [ "/input%1" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 308.0, 59.0, 300.0, 70.0 ],
					"id" : "obj-21",
					"outlettype" : [ "", "" ],
					"name" : "jmod.input%.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.op%.cmd",
					"fontsize" : 9.873845,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 448.0, 146.0, 92.0, 18.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.op%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 229.0, 93.0, 18.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [  ],
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 13.0, 75.0, 231.0, 146.0 ],
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"name" : "jmod.video_params.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Choke chromakey 2 sources",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 46.0, 260.0, 18.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 378.0, 320.0, 73.0, 18.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/fade 0.1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 451.0, 322.0, 231.0, 16.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 571.0, 370.0, 320.0, 240.0 ],
					"id" : "obj-29",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/chromakey%",
					"args" : [ "/chromakey%" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"numoutlets" : 2,
					"patching_rect" : [ 448.0, 169.0, 300.0, 140.0 ],
					"id" : "obj-30",
					"outlettype" : [ "", "" ],
					"name" : "jmod.chromakey%.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.chromakey%",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 17.334082,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 17.0, 260.0, 28.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 7.0, 273.0, 63.0 ],
					"id" : "obj-33",
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 457.5, 313.0, 672.5, 313.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [ 598.5, 156.0, 598.0, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-30", 2 ],
					"hidden" : 0,
					"midpoints" : [ 907.5, 156.0, 738.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 738.5, 354.0, 580.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 387.5, 340.0, 374.0, 340.0, 374.0, 316.0, 460.5, 316.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
