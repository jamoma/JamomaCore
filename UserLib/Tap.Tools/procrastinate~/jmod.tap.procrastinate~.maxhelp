{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 529.0, 154.0, 614.0, 417.0 ],
		"bgcolor" : [ 0.137255, 0.137255, 0.137255, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 529.0, 154.0, 614.0, 417.0 ],
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
					"text" : "It is a very expensive multiple delay unit that applies randomized parameters. Ranges for the randomized parameters can be defined in the inspector. Then send a generate_parameters message (or click the button) to generate the values used internally by the delay unit.",
					"linecount" : 6,
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 48.0, 181.0, 231.0, 72.0 ],
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
					"text" : "This delay unit was originally created for the work \"Voices: In Memoriam\" by James Mobberley - a work for piano and interactive electronics. It was later included in Jade and eventually as an external in Tap.Tools.",
					"linecount" : 5,
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 48.0, 107.0, 231.0, 61.0 ],
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "idiosyncratic delay module for jamoma",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 68.0, 185.0, 17.0 ],
					"id" : "obj-3",
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
					"patching_rect" : [ 396.0, 359.0, 88.0, 17.0 ],
					"id" : "obj-4",
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
					"patching_rect" : [ 30.0, 291.0, 150.0, 70.0 ],
					"id" : "obj-5",
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
					"varname" : "tap.jmod.reverb~.mxt[2]",
					"numinlets" : 3,
					"patching_rect" : [ 315.0, 231.0, 300.0, 140.0 ],
					"id" : "obj-6",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/output~" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "tap.jmod.reverb~.mxt[1]",
					"numinlets" : 1,
					"patching_rect" : [ 315.0, 29.0, 300.0, 140.0 ],
					"id" : "obj-7",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "tap.jmod.reverb~.mxt",
					"numinlets" : 2,
					"patching_rect" : [ 315.0, 160.0, 255.0, 60.0 ],
					"id" : "obj-8",
					"numoutlets" : 3,
					"name" : "tap.jmod.procrastinate~.mxt",
					"outlettype" : [ "", "", "" ],
					"args" : [ "/procrastinate~" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tap.jmod.procrastinate~",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 41.0, 230.0, 28.0 ],
					"id" : "obj-9",
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
					"id" : "obj-10",
					"numoutlets" : 0,
					"rounded" : 7
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [ 465.0, 154.0, 560.5, 154.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
