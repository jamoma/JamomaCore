{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 37.0, 44.0, 777.0, 680.0 ],
		"bglocked" : 0,
		"defrect" : [ 37.0, 44.0, 777.0, 680.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 100.0, 66.0, 16.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 270.0, 100.0, 52.0, 27.0 ],
					"text" : "/dump Open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 110.0, 100.0, 18.0 ],
					"text" : "prepend /load"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 555.0, 130.0, 172.0, 50.0 ],
					"presentation" : 1,
					"presentation_linecount" : 4,
					"presentation_rect" : [ 555.0, 130.0, 172.0, 50.0 ],
					"text" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamoma/Modular/Jamoma/modules/control/cueManager/aCuelist.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 550.0, 80.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 575.0, 85.0, 59.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 555.0, 110.0, 100.0, 18.0 ],
					"text" : "opendialog"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 395.0, 55.0, 47.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 445.0, 80.0, 52.0, 16.0 ],
					"text" : "/dump 1"
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
					"patching_rect" : [ 315.0, 130.0, 241.0, 48.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 315.0, 130.0, 237.0, 48.0 ],
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
					"patching_rect" : [ 445.0, 585.0, 299.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 445.0, 585.0, 299.0, 34.0 ],
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
					"patching_rect" : [ 445.0, 560.0, 298.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 445.0, 560.0, 298.0, 20.0 ],
					"text" : "ABSOLUTE STORE MODE : store all parameters",
					"textcolor" : [ 0.592157, 0.278431, 0.486275, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 500.0, 298.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 445.0, 500.0, 298.0, 34.0 ],
					"text" : "RAMP TOGGLE : add a \"ramp xxxx\" command after each parameter."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-9",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 450.0, 298.0, 48.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 445.0, 450.0, 298.0, 48.0 ],
					"text" : "AS NEXT STEP : store parameters as a new step in the selected cue. When the cue is called, each step comes after time fixed near the button"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 390.0, 298.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 445.0, 390.0, 298.0, 34.0 ],
					"text" : "AS : store parameters in a new cue at the choosen index (insert and move the cues after)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 355.0, 298.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 445.0, 355.0, 298.0, 34.0 ],
					"text" : "AS NEXT : store parameters in a new cue after the selected cue."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 320.0, 298.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 445.0, 320.0, 298.0, 34.0 ],
					"text" : "STORE : store parameters in the selected cue (replace it)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 260.0, 298.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 445.0, 260.0, 298.0, 34.0 ],
					"text" : "VIEW CUE : open a text file to show the selected cue. \nChanges will not be saved"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-4",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 210.0, 298.0, 48.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 445.0, 210.0, 305.0, 48.0 ],
					"text" : "EDIT CUE : open a text file to show the selected cue. For now, you have to save the changes with the STORE button after closing the window."
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
					"patching_rect" : [ 445.0, 55.0, 295.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 445.0, 55.0, 294.0, 20.0 ],
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
					"patching_rect" : [ 445.0, 15.0, 294.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 445.0, 15.0, 294.0, 34.0 ],
					"text" : "1/ Load a cuelist file example (or use the menu at the upper left corner of the jmod.cueManager)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 347.0, 18.0, 90.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 347.0, 18.0, 90.0, 16.0 ],
					"text" : "/load aCuelist.txt"
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
					"patching_rect" : [ 15.0, 535.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 535.0, 300.0, 140.0 ]
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
					"patching_rect" : [ 15.0, 240.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 240.0, 150.0, 70.0 ],
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
					"patching_rect" : [ 15.0, 315.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 315.0, 300.0, 140.0 ],
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
					"patching_rect" : [ 15.0, 460.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 460.0, 300.0, 70.0 ],
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
					"text" : "jmod.cueManager"
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
, 			{
				"box" : 				{
					"args" : [ "/cueManager" ],
					"id" : "obj-36",
					"maxclass" : "bpatcher",
					"name" : "jmod.cueManager.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 130.0, 300.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 130.0, 300.0, 105.0 ],
					"varname" : "/cueManager"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 356.5, 85.0, 24.5, 85.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
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
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 404.5, 85.0, 24.5, 85.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-13", 0 ]
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
