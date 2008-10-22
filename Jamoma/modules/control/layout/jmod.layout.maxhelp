{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 14.0, 55.0, 738.0, 642.0 ],
		"bglocked" : 0,
		"defrect" : [ 14.0, 55.0, 738.0, 642.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.0, 314.0, 300.0, 140.0 ],
					"presentation" : 1,
					"args" : [ "/output~" ],
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"presentation_rect" : [ 300.0, 70.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~",
					"id" : "obj-35",
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 360.0, 26.0, 300.0, 105.0 ],
					"presentation" : 1,
					"args" : [ "/limiter~" ],
					"name" : "jmod.limiter~.maxpat",
					"numinlets" : 3,
					"presentation_rect" : [ 0.0, 140.0, 300.0, 105.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/noise~",
					"id" : "obj-16",
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 439.0, 209.0, 300.0, 70.0 ],
					"presentation" : 1,
					"args" : [ "/noise~" ],
					"name" : "jmod.noise~.maxpat",
					"numinlets" : 1,
					"presentation_rect" : [ 300.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 2,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"id" : "obj-5",
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 36.0, 69.0, 300.0, 70.0 ],
					"presentation" : 1,
					"args" : [ "/filter~" ],
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"presentation_rect" : [ 300.0, 210.0, 300.0, 70.0 ],
					"numoutlets" : 3,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/degrade~",
					"id" : "obj-28",
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 94.0, 161.0, 300.0, 70.0 ],
					"presentation" : 1,
					"args" : [ "/degrade~" ],
					"name" : "jmod.degrade~.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 3,
					"presentation_rect" : [ 0.0, 70.0, 300.0, 70.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"id" : "obj-3",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 315.0, 66.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"id" : "obj-1",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 334.0, 66.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout must be connected to theses 2 objects in the main patcher",
					"linecount" : 3,
					"id" : "obj-20",
					"fontname" : "Arial",
					"patching_rect" : [ 247.0, 529.0, 150.0, 38.0 ],
					"textcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"frgb" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "demo",
					"id" : "obj-31",
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 378.0, 54.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 65.0, 445.0, 33.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pipe 1000",
					"id" : "obj-27",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 354.0, 66.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-26",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 19.0, 376.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 42.0, 443.0, 20.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 1000",
					"id" : "obj-21",
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 18.0, 398.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 1 6",
					"id" : "obj-17",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 18.0, 418.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 5,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"patching_rect" : [ 11.0, 7.0, 197.0, 28.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"presentation_rect" : [ 11.0, 8.0, 197.0, 28.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "store position of this patcher's modules into presets",
					"linecount" : 2,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"patching_rect" : [ 11.0, 37.0, 260.0, 31.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 9.0, 38.0, 272.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-25",
					"patching_rect" : [ 3.0, 2.0, 276.0, 65.0 ],
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"presentation_rect" : [ 3.0, 3.0, 284.0, 59.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- open inspector to edit layouts",
					"id" : "obj-11",
					"fontname" : "Arial",
					"patching_rect" : [ 232.0, 576.0, 205.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 11.230778,
					"numinlets" : 1,
					"presentation_rect" : [ 191.0, 530.0, 199.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 20.0, 494.0, 50.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 142.0, 468.0, 38.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store $1",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 514.0, 94.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 2,
					"presentation_rect" : [ 141.0, 486.0, 94.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 18.0, 443.0, 50.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"presentation_rect" : [ 41.0, 470.0, 38.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall $1",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 463.0, 94.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 2,
					"presentation_rect" : [ 39.0, 488.0, 94.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout will store in it's presets the presentation position + \"include in presentation\" attribute of any named module in this patcher.",
					"linecount" : 4,
					"presentation_linecount" : 3,
					"id" : "obj-10",
					"fontname" : "Arial",
					"patching_rect" : [ 428.0, 621.0, 210.0, 65.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 12.723935,
					"numinlets" : 1,
					"presentation_rect" : [ 196.0, 566.0, 280.0, 50.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t none",
					"id" : "obj-65",
					"fontname" : "Arial",
					"outlettype" : [ "none" ],
					"patching_rect" : [ 202.106232, 548.501831, 37.875458, 17.0 ],
					"fontsize" : 9.295724,
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "hover",
					"id" : "obj-19",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 179.003662, 528.564087, 53.369965, 17.0 ],
					"fontsize" : 9.295724,
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-2",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 71.0, 574.0, 150.0, 105.0 ],
					"presentation" : 1,
					"args" : [  ],
					"name" : "jmod.layout.maxpat",
					"numinlets" : 2,
					"presentation_rect" : [ 39.0, 529.0, 150.0, 105.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"id" : "obj-54",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 201.791199, 682.783875, 58.534798, 17.0 ],
					"fontsize" : 9.295724,
					"numinlets" : 1,
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-32",
					"patching_rect" : [ 287.0, 613.0, 128.0, 128.0 ],
					"presentation" : 1,
					"rounded" : 15,
					"border" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 33.0, 437.0, 447.0, 202.0 ],
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-15", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 2 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
