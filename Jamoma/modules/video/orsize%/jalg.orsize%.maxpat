{
	"patcher" : 	{
		"rect" : [ 538.0, 91.0, 715.0, 464.0 ],
		"bglocked" : 0,
		"defrect" : [ 538.0, 91.0, 715.0, 464.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass \/offset_x offset_y",
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 130.0, 152.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "map 0 1",
					"numinlets" : 2,
					"patching_rect" : [ 602.0, 159.0, 46.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "map 1 0",
					"numinlets" : 2,
					"patching_rect" : [ 553.0, 159.0, 46.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "RETURNED MESSAGES",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 390.0, 113.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"numinlets" : 1,
					"patching_rect" : [ 151.0, 390.0, 77.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 28.0, 372.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"id" : "obj-6",
					"comment" : "Zoom-rotation output"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "+[1]",
					"text" : "sel 1 0",
					"numinlets" : 1,
					"patching_rect" : [ 553.0, 127.0, 41.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "bang", "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak invert 0 0",
					"numinlets" : 3,
					"patching_rect" : [ 416.0, 126.0, 72.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jit.dimmap",
					"text" : "jit.dimmap @map 1 0",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 553.0, 190.0, 105.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix", "" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 156.0, 372.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"comment" : "Zoom-rotation output"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute \/dummy \/genframe \/direct \/zoom \/angle \/mirror \/rotate2 \/rotate1",
					"numinlets" : 1,
					"patching_rect" : [ 28.0, 45.0, 615.0, 17.0 ],
					"numoutlets" : 9,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "INSTRUCTIONS",
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 21.0, 77.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 28.0, 21.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"numinlets" : 1,
					"patching_rect" : [ 586.0, 21.0, 75.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 662.0, 21.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"comment" : "Video in"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "theta $1",
					"numinlets" : 2,
					"patching_rect" : [ 312.0, 264.0, 45.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr ($f1\/360.)*6.283185",
					"numinlets" : 1,
					"patching_rect" : [ 312.0, 243.0, 135.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "degrees",
					"numinlets" : 1,
					"patching_rect" : [ 321.0, 226.0, 50.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "zoom_y $1",
					"numinlets" : 2,
					"patching_rect" : [ 249.0, 264.0, 58.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "zoom_x $1",
					"numinlets" : 2,
					"patching_rect" : [ 188.0, 264.0, 58.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.rota",
					"numinlets" : 1,
					"patching_rect" : [ 156.0, 301.0, 42.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix", "" ],
					"id" : "obj-21"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 8 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 186.5, 198.0, 165.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.0, 82.0, 165.5, 82.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 258.5, 291.0, 165.5, 291.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 197.5, 291.0, 165.5, 291.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 321.5, 291.0, 165.5, 291.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 562.5, 295.0, 165.5, 295.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 11.5, 229.0, 165.5, 229.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 78.0, 229.0, 165.5, 229.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 261.0, 221.0, 197.5, 221.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 261.0, 221.0, 258.5, 221.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 4 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 335.5, 193.0, 321.5, 193.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 5 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 6 ],
					"destination" : [ "obj-8", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 7 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 671.0, 183.0, 562.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 611.5, 180.0, 562.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 573.5, 151.0, 611.5, 151.0 ]
				}

			}
 ]
	}

}
