{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 114.0, 110.0, 352.0, 527.0 ],
		"bgcolor" : [ 0.137255, 0.137255, 0.137255, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 114.0, 110.0, 352.0, 527.0 ],
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
					"text" : "tap.jmod.yalfo~ is an extremely efficient low frequency audio oscillator module based on tap.lfo~.",
					"linecount" : 3,
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 50.0, 91.0, 227.0, 39.0 ],
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tap.scale~ 0. 2. -1. 1.",
					"numinlets" : 5,
					"patching_rect" : [ 45.0, 208.0, 109.0, 17.0 ],
					"id" : "obj-2",
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
					"patching_rect" : [ 45.0, 234.0, 235.0, 154.0 ],
					"id" : "obj-3",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "low frequency oscillator",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 62.0, 130.0, 17.0 ],
					"id" : "obj-4",
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
					"patching_rect" : [ 185.0, 208.0, 88.0, 17.0 ],
					"id" : "obj-5",
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
					"patching_rect" : [ 34.0, 396.0, 150.0, 70.0 ],
					"id" : "obj-6",
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
					"varname" : "tap.jmod.reverb~.mxt",
					"numinlets" : 0,
					"patching_rect" : [ 34.0, 133.0, 255.0, 60.0 ],
					"id" : "obj-7",
					"numoutlets" : 2,
					"name" : "tap.jmod.yalfo~.mxt",
					"outlettype" : [ "", "" ],
					"args" : [ "/lfo~" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tap.jmod.yalfo~",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 35.0, 170.0, 28.0 ],
					"id" : "obj-8",
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
					"patching_rect" : [ 34.0, 24.0, 255.0, 60.0 ],
					"id" : "obj-9",
					"numoutlets" : 0,
					"rounded" : 7
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 200.0, 54.5, 200.0 ]
				}

			}
 ]
	}

}
