{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 115.0, 110.0, 618.0, 442.0 ],
		"bgcolor" : [ 0.137255, 0.137255, 0.137255, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 115.0, 110.0, 618.0, 442.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this performs an idiosyncratic filtering on the signal to try and reduce pops and clicks in the sound. like any filter it has many artifacts. it can be abused to acheive unusual non-linear lowpass filtering effects and other audio mangling.",
					"linecount" : 6,
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 44.0, 290.0, 224.0, 72.0 ],
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this module wraps the tap.anticlick~ object in tap.tools.",
					"linecount" : 2,
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 44.0, 255.0, 230.0, 28.0 ],
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall 2",
					"numinlets" : 2,
					"patching_rect" : [ 316.0, 136.0, 86.0, 15.0 ],
					"id" : "obj-3",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tap.scale~ 0. 2. -1. 1.",
					"numinlets" : 5,
					"patching_rect" : [ 448.0, 121.0, 109.0, 17.0 ],
					"id" : "obj-4",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"patching_rect" : [ 438.0, 250.0, 132.0, 130.0 ],
					"id" : "obj-5",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"patching_rect" : [ 303.0, 250.0, 132.0, 130.0 ],
					"id" : "obj-6",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+~",
					"numinlets" : 2,
					"patching_rect" : [ 408.0, 146.0, 50.0, 17.0 ],
					"id" : "obj-7",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 408.0, 100.0, 16.0, 16.0 ],
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "click~",
					"numinlets" : 1,
					"patching_rect" : [ 408.0, 121.0, 37.0, 17.0 ],
					"id" : "obj-9",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "lame pop reduction module for jamoma",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 68.0, 192.0, 17.0 ],
					"id" : "obj-10",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 35 35 35",
					"hidden" : 1,
					"numinlets" : 4,
					"patching_rect" : [ 50.0, 125.0, 88.0, 17.0 ],
					"id" : "obj-11",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "tap.jmod.reverb~.mxt[3]",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 181.0, 150.0, 70.0 ],
					"id" : "obj-12",
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/control" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "tap.jmod.reverb~.mxt[1]",
					"numinlets" : 0,
					"patching_rect" : [ 315.0, 29.0, 255.0, 60.0 ],
					"id" : "obj-13",
					"numoutlets" : 2,
					"name" : "tap.jmod.yalfo~.mxt",
					"outlettype" : [ "", "" ],
					"args" : [ "/lfo~" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "tap.jmod.reverb~.mxt",
					"numinlets" : 2,
					"patching_rect" : [ 316.0, 181.0, 255.0, 60.0 ],
					"id" : "obj-14",
					"numoutlets" : 2,
					"name" : "tap.jmod.anticlick~.mxt",
					"outlettype" : [ "", "" ],
					"args" : [ "/anticlick~" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tap.jmod.anticlick~",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 41.0, 185.0, 28.0 ],
					"id" : "obj-15",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 18.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.180392, 0.180392, 0.180392, 1.0 ],
					"patching_rect" : [ 34.0, 30.0, 255.0, 60.0 ],
					"id" : "obj-16",
					"numoutlets" : 0,
					"rounded" : 7
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "click button to introduce pops in the signal ->",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 200.0, 102.0, 216.0, 17.0 ],
					"id" : "obj-17",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use this preset to see the results ->",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 148.0, 138.0, 172.0, 17.0 ],
					"id" : "obj-18",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 417.5, 172.0, 561.5, 172.0 ]
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
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 560.5, 105.0, 457.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 561.5, 245.0, 447.5, 245.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 417.5, 168.0, 396.0, 168.0, 396.0, 168.0, 312.5, 168.0 ]
				}

			}
 ]
	}

}
