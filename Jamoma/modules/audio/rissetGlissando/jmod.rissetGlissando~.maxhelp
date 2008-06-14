{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 55.0, 51.0, 367.0, 320.0 ],
		"bglocked" : 0,
		"defrect" : [ 55.0, 51.0, 367.0, 320.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 181.0, 206.0, 67.0, 15.0 ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"id" : "obj-2",
					"patching_rect" : [ 251.0, 206.0, 33.0, 33.0 ],
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.rissetGlissando~",
					"id" : "obj-3",
					"fontsize" : 18.0,
					"patching_rect" : [ 9.0, 19.0, 219.0, 27.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "audio synthesis generating Shepard/Risset infinite glissandi.",
					"id" : "obj-4",
					"fontsize" : 9.0,
					"patching_rect" : [ 10.0, 45.0, 282.0, 17.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-5",
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 3.0, 3.0, 316.0, 68.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 105.0, 183.0, 65.0, 17.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 40.0, 206.0, 95.0, 15.0 ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 40.0, 183.0, 61.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/echo~",
					"id" : "obj-9",
					"name" : "jmod.rissetGlissando~.mxt",
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 40.0, 114.0, 255.0, 60.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"args" : [ "/rissetGlissando~" ],
					"numoutlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 190.5, 228.0, 176.0, 228.0, 176.0, 201.0, 260.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 114.5, 203.0, 49.5, 203.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
