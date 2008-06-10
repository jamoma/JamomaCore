{
	"patcher" : 	{
		"rect" : [ 236.0, 51.0, 712.0, 517.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 236.0, 51.0, 712.0, 517.0 ],
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
					"maxclass" : "bpatcher",
					"name" : "jmod.input%.maxpat",
					"numinlets" : 1,
					"patching_rect" : [ 316.0, 9.0, 301.0, 71.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"args" : [ "\/input%" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 158.0, 359.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/mirror $1",
					"numinlets" : 2,
					"patching_rect" : [ 175.0, 359.0, 62.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 158.0, 321.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/rotate1 $1",
					"numinlets" : 2,
					"patching_rect" : [ 175.0, 321.0, 65.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 25.0, 358.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/angle $1",
					"numinlets" : 2,
					"patching_rect" : [ 62.0, 358.0, 54.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 25.0, 339.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/offset_y $1",
					"numinlets" : 2,
					"patching_rect" : [ 62.0, 339.0, 70.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module Controls",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 246.0, 206.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999,
					"fontname" : "Verdana",
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Specific module messages",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 276.0, 252.0, 21.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.533333,
					"fontname" : "Verdana",
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 158.0, 340.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 25.0, 320.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/offset_x $1",
					"numinlets" : 2,
					"patching_rect" : [ 62.0, 320.0, 70.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 25.0, 301.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/zoom $1",
					"numinlets" : 2,
					"patching_rect" : [ 62.0, 301.0, 54.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/rotate2 $1",
					"numinlets" : 2,
					"patching_rect" : [ 175.0, 340.0, 65.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.orsize%.cmd",
					"numinlets" : 1,
					"patching_rect" : [ 175.0, 403.0, 101.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.orsize%.cmd",
					"numinlets" : 0,
					"patching_rect" : [ 316.0, 82.0, 101.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.edge%.cmd",
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 225.0, 93.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jmod.video_params.maxpat",
					"numinlets" : 0,
					"patching_rect" : [ 12.0, 77.0, 260.0, 146.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.orsize%",
					"numinlets" : 1,
					"patching_rect" : [ 28.0, 16.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-22",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "change orientation and size of video",
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 42.0, 242.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-23",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 0.0, 0.0, 273.0, 63.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numinlets" : 1,
					"patching_rect" : [ 382.0, 176.0, 65.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numinlets" : 2,
					"patching_rect" : [ 316.0, 198.0, 231.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"patching_rect" : [ 316.0, 176.0, 61.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 315.0, 219.0, 320.0, 240.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.orsize%",
					"name" : "jmod.orsize%.maxpat",
					"numinlets" : 2,
					"patching_rect" : [ 316.0, 104.0, 301.0, 71.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-29",
					"args" : [ "\/orsize%" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tip: click and drag in the preview window to change the offset. Shift-click to zoom.",
					"linecount" : 4,
					"numinlets" : 1,
					"patching_rect" : [ 654.0, 113.0, 104.0, 49.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"background" : 1,
					"numinlets" : 1,
					"bgcolor" : [ 0.901961, 0.839216, 0.564706, 1.0 ],
					"patching_rect" : [ 12.0, 245.0, 265.0, 27.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"background" : 1,
					"numinlets" : 1,
					"bgcolor" : [ 0.996078, 0.945098, 0.705882, 1.0 ],
					"patching_rect" : [ 12.0, 276.0, 265.0, 111.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-32"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 391.5, 195.0, 325.5, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 607.5, 215.0, 324.5, 215.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0
				}

			}
 ]
	}

}
