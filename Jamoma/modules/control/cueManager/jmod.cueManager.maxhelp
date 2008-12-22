{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 4.0, 54.0, 777.0, 680.0 ],
		"bglocked" : 0,
		"defrect" : [ 4.0, 54.0, 777.0, 680.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/dump 1",
					"patching_rect" : [ 395.0, 55.0, 47.0, 16.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"presentation_rect" : [ 445.0, 80.0, 52.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- INSPECTOR : \n- to manage the cue list (copy, remove)\n- to select the module to store in the cuelist",
					"linecount" : 3,
					"presentation_linecount" : 3,
					"patching_rect" : [ 315.0, 130.0, 241.0, 48.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-14",
					"presentation_rect" : [ 315.0, 130.0, 237.0, 48.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DIFFERENTIAL STORE MODE : store only changed parameters since the last stored or recalled cue.",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 445.0, 585.0, 299.0, 34.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.592157, 0.278431, 0.486275, 1.0 ],
					"id" : "obj-12",
					"textcolor" : [ 0.592157, 0.278431, 0.486275, 1.0 ],
					"presentation_rect" : [ 445.0, 585.0, 299.0, 34.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ABSOLUTE STORE MODE : store all parameters",
					"patching_rect" : [ 445.0, 560.0, 298.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.592157, 0.278431, 0.486275, 1.0 ],
					"id" : "obj-11",
					"textcolor" : [ 0.592157, 0.278431, 0.486275, 1.0 ],
					"presentation_rect" : [ 445.0, 560.0, 298.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "RAMP TOGGLE : add a \"ramp xxxx\" command after each parameter.",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 445.0, 500.0, 298.0, 34.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-10",
					"presentation_rect" : [ 445.0, 500.0, 298.0, 34.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "AS NEXT STEP : store parameters as a new step in the selected cue. When the cue is called, each step comes after time fixed near the button",
					"linecount" : 3,
					"presentation_linecount" : 3,
					"patching_rect" : [ 445.0, 450.0, 298.0, 48.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-9",
					"presentation_rect" : [ 445.0, 450.0, 298.0, 48.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "AS : store parameters in a new cue at the choosen index (insert and move the cues after)",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 445.0, 390.0, 298.0, 34.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-8",
					"presentation_rect" : [ 445.0, 390.0, 298.0, 34.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "AS NEXT : store parameters in a new cue after the selected cue.",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 445.0, 355.0, 298.0, 34.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-7",
					"presentation_rect" : [ 445.0, 355.0, 298.0, 34.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "STORE : store parameters in the selected cue (replace it)",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 445.0, 320.0, 298.0, 34.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-6",
					"presentation_rect" : [ 445.0, 320.0, 298.0, 34.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIEW CUE : open a text file to show the selected cue. \nChanges will not be saved",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 445.0, 260.0, 298.0, 34.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-5",
					"presentation_rect" : [ 445.0, 260.0, 298.0, 34.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "EDIT CUE : open a text file to show the selected cue. For instant, you have to save the changes with the STORE button after closing the window.",
					"linecount" : 3,
					"presentation_linecount" : 3,
					"patching_rect" : [ 445.0, 210.0, 298.0, 48.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-4",
					"presentation_rect" : [ 445.0, 210.0, 298.0, 48.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2/ Use the \"Cue___Menu\" to select a cue and dump it",
					"patching_rect" : [ 445.0, 55.0, 295.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-3",
					"presentation_rect" : [ 445.0, 55.0, 294.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1/ Load a cuelist file example (or use the menu at the upper left corner of the jmod.cueManager)",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 445.0, 15.0, 293.0, 34.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-2",
					"presentation_rect" : [ 445.0, 15.0, 292.0, 34.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/load ./aCuelist.txt",
					"patching_rect" : [ 347.0, 18.0, 90.0, 16.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-1",
					"presentation_rect" : [ 347.0, 18.0, 90.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 15.0, 535.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/output~" ],
					"id" : "obj-43",
					"presentation_rect" : [ 15.0, 535.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"name" : "jmod.output~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"patching_rect" : [ 15.0, 240.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/control" ],
					"id" : "obj-26",
					"presentation_rect" : [ 15.0, 240.0, 150.0, 70.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"name" : "jmod.control.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"patching_rect" : [ 15.0, 315.0, 300.0, 140.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~" ],
					"id" : "obj-27",
					"presentation_rect" : [ 15.0, 315.0, 300.0, 140.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"name" : "jmod.input~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/degrade~",
					"patching_rect" : [ 15.0, 460.0, 300.0, 70.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/degrade~" ],
					"id" : "obj-28",
					"presentation_rect" : [ 15.0, 460.0, 300.0, 70.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 3,
					"name" : "jmod.degrade~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.cueManager",
					"patching_rect" : [ 15.0, 20.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-21",
					"presentation_rect" : [ 15.0, 20.0, 189.0, 28.0 ],
					"numinlets" : 1,
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module for managing cuelists",
					"patching_rect" : [ 15.0, 50.0, 189.0, 18.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-22",
					"presentation_rect" : [ 15.0, 50.0, 189.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 5.0, 5.0, 320.0, 70.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"rounded" : 15,
					"id" : "obj-23",
					"presentation_rect" : [ 5.0, 5.0, 320.0, 70.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/cueManager",
					"patching_rect" : [ 15.0, 130.0, 300.0, 105.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/cueManager" ],
					"id" : "obj-36",
					"presentation_rect" : [ 15.0, 130.0, 300.0, 105.0 ],
					"numinlets" : 1,
					"name" : "jmod.cueManager.maxpat"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 404.5, 85.0, 24.5, 85.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 2 ],
					"destination" : [ "obj-43", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 2 ],
					"destination" : [ "obj-28", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 356.5, 85.0, 24.5, 85.0 ]
				}

			}
 ]
	}

}
