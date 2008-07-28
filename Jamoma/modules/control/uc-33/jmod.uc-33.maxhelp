{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 40.0, 53.0, 503.0, 364.0 ],
		"bglocked" : 0,
		"defrect" : [ 40.0, 53.0, 503.0, 364.0 ],
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
					"text" : "Check the inspector, it works as a virtual fader!",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 24.0, 114.0, 305.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 113.0, 250.0, 73.0, 18.0 ],
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/panel/open",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 46.0, 273.0, 192.0, 16.0 ],
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 46.0, 250.0, 68.0, 18.0 ],
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.bcf2000",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 46.0, 154.0, 150.0, 72.0 ],
					"id" : "obj-5",
					"args" : [ "/uc-33" ],
					"outlettype" : [ "" ],
					"name" : "jmod.uc-33.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "module interfacing with the Edirol UC-33 MIDI fader",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 24.0, 53.0, 345.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.uc-33",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 24.0, 25.0, 325.0, 28.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 12.0, 403.0, 65.0 ],
					"id" : "obj-8",
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module expects UC-33 to be set to factory preset 1 .",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 24.0, 94.0, 304.0, 19.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 122.5, 270.0, 55.5, 270.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
