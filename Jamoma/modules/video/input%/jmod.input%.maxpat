{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 429.0, 190.0, 850.0, 577.0 ],
		"bglocked" : 0,
		"defrect" : [ 429.0, 190.0, 850.0, 577.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "jit.pwindow",
					"presentation_rect" : [ 238.0, 22.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 180.0, 155.0, 129.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 260.0, 470.0, 63.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 170.0, 285.0, 46.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "source_mode[1]",
					"text" : "jcom.parameter source_mode @type msg_toggle @range/clipmode none @description \"Choose between camera - file or synthesis as input\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 320.0, 85.0, 372.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 280.0, 495.0, 86.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 260.0, 495.0, 20.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "source_mode",
					"labelclick" : 1,
					"fontname" : "Verdana",
					"presentation_rect" : [ 161.0, 1.0, 76.0, 19.0 ],
					"numinlets" : 1,
					"items" : [ "camera", ",", "video", "file", ",", "synthesis" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 320.0, 64.0, 76.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-8",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jalg.input%.ui",
					"offset" : [ 0.0, -19.0 ],
					"presentation_rect" : [ 1.0, 21.0, 240.0, 47.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 5.0, 21.0, 194.0, 47.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-9",
					"args" : [ "#0_" ],
					"name" : "jalg.input%.ui.maxpat",
					"frozen_box_attributes" : [ "args" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 170.0, 340.0, 41.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "open" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 170.0, 365.0, 49.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 170.0, 315.0, 94.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 155.0, 137.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 240.0, 81.0, 29.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.input% #0_",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 170.0, 440.0, 109.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "", "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Input from either a camera - video file or video synthesis\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 185.0, 579.0, 31.0 ],
					"numoutlets" : 2,
					"id" : "obj-17",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 15.0, 155.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 240.0, 20.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-19",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/preview 0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 277.0, 398.0, 156.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 277.0, 376.0, 68.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "video",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_mute" : 1,
					"numinlets" : 1,
					"has_freeze" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"has_preview" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 179.0, 24.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 329.5, 117.0, 306.0, 117.0, 306.0, 60.0, 329.5, 60.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 310.0, 179.5, 310.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 367.0, 286.5, 367.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 506.0, 143.0, 770.0, 143.0, 770.0, 16.0, 14.5, 16.0 ]
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 179.5, 537.0, 779.0, 537.0, 779.0, 15.0, 14.5, 15.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 396.0, 179.5, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
