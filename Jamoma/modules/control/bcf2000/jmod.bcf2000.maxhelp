{
	"patcher" : 	{
		"rect" : [ 40.0, 53.0, 451.0, 438.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 40.0, 53.0, 451.0, 438.0 ],
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
					"maxclass" : "comment",
					"text" : "BCF2000b should be set to one of the USB modes or Stand-Alone mode 4.",
					"linecount" : 2,
					"patching_rect" : [ 24.0, 126.0, 300.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Check the inspector!",
					"patching_rect" : [ 24.0, 223.0, 300.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "In practical use preset should be loaded once all modules have loaded to make sure (or be controlled by a cue script).",
					"linecount" : 2,
					"patching_rect" : [ 24.0, 191.0, 300.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MIDI communication seems to take a little while to \"bind\", so initialization of the module when instantiated might be unreliable.",
					"linecount" : 2,
					"patching_rect" : [ 24.0, 159.0, 300.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"patching_rect" : [ 111.0, 338.0, 68.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 44.0, 361.0, 192.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-6",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 44.0, 338.0, 62.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.bcf2000",
					"patching_rect" : [ 44.0, 264.0, 302.0, 71.0 ],
					"name" : "jmod.bcf2000.maxpat",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "\/bcf2000" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "module interfacing with the Behringer BCF2000 motorized controller",
					"patching_rect" : [ 24.0, 53.0, 341.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.bcf2000",
					"patching_rect" : [ 24.0, 25.0, 313.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 12.0, 12.0, 403.0, 65.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module expects the BCF2000 to be set to factory preset 1 (only controllers CC 1-94, all on MIDI channel 1).",
					"linecount" : 2,
					"patching_rect" : [ 24.0, 94.0, 300.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 120.5, 358.0, 53.5, 358.0 ]
				}

			}
 ]
	}

}
