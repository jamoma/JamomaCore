{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 33.0, 53.0, 1022.0, 489.0 ],
		"bglocked" : 0,
		"defrect" : [ 33.0, 53.0, 1022.0, 489.0 ],
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
					"text" : "Choose replacement color",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 908.0, 172.0, 99.0, 31.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Manually hoose which color to chromakey",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 880.0, 127.0, 122.0, 31.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"outlettype" : [ "", "float" ],
					"compatibility" : 1,
					"patching_rect" : [ 777.0, 171.0, 128.0, 32.0 ],
					"id" : "obj-3",
					"numinlets" : 3,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 716.0, 100.0, 20.0, 20.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"outlettype" : [ "", "float" ],
					"compatibility" : 1,
					"patching_rect" : [ 746.0, 128.0, 128.0, 32.0 ],
					"id" : "obj-5",
					"numinlets" : 3,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 331.0, 238.0, 320.0, 240.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.chromacolor%",
					"outlettype" : [ "jit_matrix" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 686.0, 215.0, 110.0, 19.0 ],
					"id" : "obj-7",
					"numinlets" : 4,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%[1]",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 332.0, 65.0, 270.0, 70.0 ],
					"args" : [ "/input%" ],
					"id" : "obj-8",
					"numinlets" : 1,
					"name" : "jmod.input%.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/brcosa%",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 332.0, 141.0, 270.0, 60.0 ],
					"args" : [ "/brcosa%" ],
					"id" : "obj-9",
					"numinlets" : 2,
					"name" : "jmod.brcosa%.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.0, 87.0, 260.0, 146.0 ],
					"args" : [  ],
					"id" : "obj-10",
					"numinlets" : 0,
					"name" : "jmod.video_params.maxpat",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.chromacolor%",
					"fontsize" : 17.334082,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 24.0, 19.0, 189.0, 28.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Change the color in the image based on chromakeying",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 25.0, 45.0, 284.0, 19.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"patching_rect" : [ 20.0, 10.0, 303.0, 64.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 685.0, 238.0, 320.0, 240.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Automatic / manual chromakey",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 734.0, 101.0, 187.0, 19.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 592.5, 215.0, 340.5, 215.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 592.5, 206.0, 695.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
