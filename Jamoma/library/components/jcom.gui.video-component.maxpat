{
	"patcher" : 	{
		"rect" : [ 75.0, 122.0, 1161.0, 581.0 ],
		"bglocked" : 0,
		"defrect" : [ 75.0, 122.0, 1161.0, 581.0 ],
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
					"maxclass" : "newobj",
					"text" : "jcom.return preview_dumpout",
					"id" : "obj-1",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 21.0, 260.0, 147.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.remote __preview__",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 230.0, 27.0, 131.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "0",
					"outlettype" : [ "int" ],
					"id" : "obj-3",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 657.0, 186.0, 27.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pwindow_gate[8]",
					"text" : "sel 1",
					"outlettype" : [ "bang", "" ],
					"id" : "obj-4",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 657.0, 165.0, 32.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "0",
					"outlettype" : [ "int" ],
					"id" : "obj-5",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 599.0, 270.0, 27.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pwindow_gate[7]",
					"text" : "sel 1",
					"outlettype" : [ "bang", "" ],
					"id" : "obj-6",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 599.0, 249.0, 32.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "0",
					"outlettype" : [ "int" ],
					"id" : "obj-7",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 606.0, 349.0, 27.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pwindow_gate[6]",
					"text" : "sel 1",
					"outlettype" : [ "bang", "" ],
					"id" : "obj-8",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 606.0, 328.0, 32.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "preview",
					"id" : "obj-9",
					"patching_rect" : [ 31.0, 1.0, 13.0, 12.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "freeze",
					"id" : "obj-10",
					"patching_rect" : [ 23.0, 1.0, 13.0, 12.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "button_bypass[2]",
					"outlettype" : [ "int" ],
					"id" : "obj-11",
					"trackhorizontal" : 1,
					"snap" : 1,
					"mode" : 1,
					"trackvertical" : 1,
					"ratio" : 1,
					"patching_rect" : [ 33.0, 2.0, 11.0, 11.0 ],
					"numinlets" : 1,
					"multiplier" : 1,
					"tracking" : 1,
					"name" : "jcom.button.preview.pct",
					"numoutlets" : 1,
					"frames" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "button_bypass[1]",
					"outlettype" : [ "int" ],
					"id" : "obj-12",
					"trackhorizontal" : 1,
					"snap" : 1,
					"mode" : 1,
					"trackvertical" : 1,
					"ratio" : 1,
					"patching_rect" : [ 23.0, 2.0, 11.0, 11.0 ],
					"numinlets" : 1,
					"multiplier" : 1,
					"tracking" : 1,
					"name" : "jcom.button.freeze.pct",
					"numoutlets" : 1,
					"frames" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "mute",
					"id" : "obj-13",
					"patching_rect" : [ 13.0, 1.0, 13.0, 12.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "button_mute",
					"outlettype" : [ "int" ],
					"id" : "obj-14",
					"trackhorizontal" : 1,
					"snap" : 1,
					"mode" : 1,
					"trackvertical" : 1,
					"ratio" : 1,
					"patching_rect" : [ 13.0, 2.0, 11.0, 11.0 ],
					"numinlets" : 1,
					"multiplier" : 1,
					"tracking" : 1,
					"name" : "jcom.button.mute.pct",
					"numoutlets" : 1,
					"frames" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send #1_FROM_GUI_VIDEO_COMPONENT",
					"id" : "obj-15",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 695.0, 444.0, 193.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend video_preview",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 960.0, 338.0, 81.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend video_mute",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 785.0, 338.0, 66.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend video_freeze",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 695.0, 338.0, 73.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend video_bypass",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 859.0, 338.0, 75.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message video\/direct @type msg_generic @description \"Send messages directly to the jitter external embedded in the module.\"",
					"linecount" : 2,
					"id" : "obj-20",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 267.0, 427.0, 320.0, 28.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pwindow_gate[5]",
					"text" : "jcom.message video\/genframe @description \"Forces a frame of output to be sent.\"",
					"id" : "obj-21",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 267.0, 393.0, 383.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "video\/mute",
					"text" : "jcom.parameter video\/mute @type msg_toggle @repetitions 0 @description \"Mutes (turns off) the module's.mxtorithm - generating no output.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-22",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 267.0, 217.0, 357.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "video\/freeze",
					"text" : "jcom.parameter video\/freeze @type msg_toggle @repetitions 0 @description \"Freezes the last frame of output from the module's processing.mxtorithm.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-23",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 267.0, 296.0, 363.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "video\/bypass",
					"text" : "jcom.parameter video\/bypass @type msg_toggle @repetitions 0 @description \"Bypasses the video processing algorithm in the module - allowing unaltered video through.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-24",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 267.0, 132.0, 416.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "video\/preview",
					"text" : "jcom.parameter video\/preview @type msg_toggle @description \"Turns on\/off the video display in the module's preview window.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-25",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 267.0, 88.0, 307.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"hidden" : 1,
					"patching_rect" : [ 193.0, 97.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : "video input for previewing"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pwindow_gate",
					"text" : "gate",
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 182.0, 127.0, 29.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "pwindow",
					"outlettype" : [ "", "" ],
					"id" : "obj-28",
					"patching_rect" : [ -1.0, 15.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"background" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "bypass",
					"id" : "obj-29",
					"patching_rect" : [ 1.0, 1.0, 13.0, 12.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "button_bypass",
					"outlettype" : [ "int" ],
					"id" : "obj-30",
					"trackhorizontal" : 1,
					"snap" : 1,
					"mode" : 1,
					"trackvertical" : 1,
					"ratio" : 1,
					"patching_rect" : [ 3.0, 2.0, 11.0, 11.0 ],
					"numinlets" : 1,
					"multiplier" : 1,
					"tracking" : 1,
					"name" : "jcom.button.bypass.pct",
					"numoutlets" : 1,
					"frames" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 564.5, 122.0, 191.5, 122.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 666.5, 210.0, 276.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 608.5, 291.0, 276.5, 291.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 620.5, 326.0, 704.5, 326.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 969.5, 399.0, 704.5, 399.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 868.5, 399.0, 704.5, 399.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 794.5, 399.0, 704.5, 399.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [ 614.5, 247.0, 794.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 673.5, 162.0, 868.5, 162.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 564.5, 122.0, 969.5, 122.0 ]
				}

			}
 ]
	}

}
