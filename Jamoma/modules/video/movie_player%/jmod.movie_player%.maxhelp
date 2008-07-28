{
	"patcher" : 	{
		"rect" : [ 30.0, 89.0, 434.0, 627.0 ],
		"bglocked" : 0,
		"defrect" : [ 30.0, 89.0, 434.0, 627.0 ],
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
					"maxclass" : "message",
					"text" : "jmod.input%",
					"numinlets" : 2,
					"patching_rect" : [ 92.0, 590.0, 66.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"numinlets" : 1,
					"patching_rect" : [ 92.0, 609.0, 64.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"patching_rect" : [ 92.0, 628.0, 45.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.movie_player",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 29.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-4",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "playback of QuictTime movies.",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 55.0, 242.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-5",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 13.0, 13.0, 375.0, 63.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 288.0, 132.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 40",
					"numinlets" : 2,
					"patching_rect" : [ 288.0, 153.0, 57.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 42.0, 326.0, 320.0, 240.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.movie_player%",
					"name" : "jmod.movie_player%.maxpat",
					"numinlets" : 2,
					"patching_rect" : [ 44.0, 176.0, 302.0, 141.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"args" : [ "player" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rightmost inlet can be used to feed bang as signal",
					"linecount" : 4,
					"numinlets" : 1,
					"patching_rect" : [ 348.0, 184.0, 72.0, 49.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "see also",
					"numinlets" : 1,
					"patching_rect" : [ 43.0, 591.0, 46.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compared to jmod.input% this is a module for playback of Quick Time movies only, with additional control parameters, and external clocking.",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 88.0, 338.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-13"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 336.5, 321.0, 51.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0
				}

			}
 ]
	}

}
