{
	"patcher" : 	{
		"rect" : [ 557.0, 153.0, 719.0, 595.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 557.0, 153.0, 719.0, 595.0 ],
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
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 117.0, 496.0, 73.0, 26.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 148.0, 324.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 148.0, 306.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 148.0, 288.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/mask\/blue $1",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 186.0, 324.0, 65.0, 26.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/mask\/green $1",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 186.0, 306.0, 71.0, 26.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/mask\/red $1",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 186.0, 288.0, 60.0, 26.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/video\/genframe",
					"numinlets" : 2,
					"patching_rect" : [ 339.0, 44.0, 113.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.533333,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.change",
					"numinlets" : 1,
					"patching_rect" : [ 622.0, 148.0, 54.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix", "" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/input%",
					"name" : "jmod.input%",
					"numinlets" : 1,
					"patching_rect" : [ 339.0, 69.0, 302.0, 73.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 22.0, 323.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 22.0, 305.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 22.0, 287.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.emboss%.cmd",
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 382.0, 101.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.emboss%.cmd",
					"numinlets" : 0,
					"patching_rect" : [ 339.0, 152.0, 113.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.emboss%.cmd",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 235.0, 106.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jmod.video_params.maxpat",
					"numinlets" : 0,
					"patching_rect" : [ 13.0, 87.0, 273.0, 146.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.emboss%",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 34.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-18",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cheesy embossing effect",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 60.0, 242.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-19",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 13.0, 18.0, 273.0, 63.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"patching_rect" : [ 339.0, 502.0, 60.0, 30.533276 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 338.0, 255.0, 320.0, 240.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/emboss%",
					"name" : "jmod.emboss%.maxpat",
					"numinlets" : 2,
					"patching_rect" : [ 339.0, 170.0, 302.0, 73.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-23",
					"args" : [ "\/emboss%" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/tint\/blue $1",
					"numinlets" : 2,
					"patching_rect" : [ 60.0, 323.0, 76.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/tint\/green $1",
					"numinlets" : 2,
					"patching_rect" : [ 60.0, 305.0, 82.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/tint\/red $1",
					"numinlets" : 2,
					"patching_rect" : [ 60.0, 287.0, 72.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-26"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 631.5, 247.0, 347.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0
				}

			}
 ]
	}

}
