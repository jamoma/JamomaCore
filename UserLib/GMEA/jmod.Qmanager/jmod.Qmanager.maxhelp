{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 4.0, 50.0, 1280.0, 694.0 ],
		"bglocked" : 0,
		"defrect" : [ 4.0, 50.0, 1280.0, 694.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "jmod.Qmanager.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 85.0, 300.0, 210.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 85.0, 300.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-14",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 335.0, 85.0, 241.0, 48.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 335.0, 85.0, 241.0, 48.0 ],
					"text" : "<- INSPECTOR : \n- to manage the cue list (copy, remove)\n- to select the module to store in the cuelist"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.592157, 0.278431, 0.486275, 1.0 ],
					"id" : "obj-12",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 390.0, 299.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 20.0, 390.0, 299.0, 34.0 ],
					"text" : "DIFFERENTIAL STORE MODE : store only changed parameters since the last stored or recalled cue.",
					"textcolor" : [ 0.592157, 0.278431, 0.486275, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.592157, 0.278431, 0.486275, 1.0 ],
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 365.0, 298.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 365.0, 298.0, 20.0 ],
					"text" : "ABSOLUTE STORE MODE : store all parameters",
					"textcolor" : [ 0.592157, 0.278431, 0.486275, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 311.0, 302.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 311.0, 302.0, 20.0 ],
					"text" : "EDIT : open a text file to show the selected cue"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 335.0, 50.0, 295.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 335.0, 50.0, 295.0, 20.0 ],
					"text" : "2/ Use the \"Cue___Menu\" to select a cue and dump it"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 335.0, 10.0, 294.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 335.0, 10.0, 294.0, 34.0 ],
					"text" : "1/ Load a cuelist file example (or use the menu at the upper left corner of the jmod.cueManager)"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/output~" ],
					"id" : "obj-43",
					"maxclass" : "bpatcher",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 700.0, 395.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 700.0, 395.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/control" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-26",
					"maxclass" : "bpatcher",
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 700.0, 85.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 700.0, 85.0, 150.0, 70.0 ],
					"varname" : "/control"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/input~" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-27",
					"maxclass" : "bpatcher",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 700.0, 165.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 700.0, 165.0, 300.0, 140.0 ],
					"varname" : "/input~"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/degrade~" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-28",
					"maxclass" : "bpatcher",
					"name" : "jmod.degrade~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 700.0, 315.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 700.0, 315.0, 300.0, 70.0 ],
					"varname" : "/degrade~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 17.334082,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 20.0, 189.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 20.0, 189.0, 28.0 ],
					"text" : "jmod.QManager"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 50.0, 189.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 50.0, 189.0, 18.0 ],
					"text" : "Module for managing cuelists"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 5.0, 320.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 5.0, 320.0, 70.0 ],
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-27", 2 ]
				}

			}
 ]
	}

}
