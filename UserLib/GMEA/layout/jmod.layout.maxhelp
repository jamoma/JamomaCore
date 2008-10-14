{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 14.0, 55.0, 809.0, 860.0 ],
		"bglocked" : 0,
		"defrect" : [ 14.0, 55.0, 809.0, 860.0 ],
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
					"maxclass" : "comment",
					"text" : "jmod.layout must be connected to theses 2 objects in the main patcher",
					"linecount" : 3,
					"textcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 361.0, 525.0, 150.0, 38.0 ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "demo",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 97.0, 490.0, 33.0, 17.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 378.0, 54.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 19.0, 354.0, 100.0, 17.0 ],
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 74.0, 488.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 19.0, 376.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 1000",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 18.0, 398.0, 100.0, 17.0 ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 1 6",
					"fontsize" : 9.0,
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 18.0, 418.0, 100.0, 17.0 ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 11.0, 8.0, 197.0, 28.0 ],
					"fontname" : "Verdana",
					"patching_rect" : [ 11.0, 7.0, 197.0, 28.0 ],
					"presentation" : 1,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "store position of module in this patcher into presets",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 11.0, 38.0, 271.0, 19.0 ],
					"fontname" : "Verdana",
					"patching_rect" : [ 11.0, 37.0, 260.0, 31.0 ],
					"presentation" : 1,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 3.0, 3.0, 276.0, 65.0 ],
					"patching_rect" : [ 3.0, 2.0, 276.0, 65.0 ],
					"presentation" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"presentation_rect" : [ 300.0, 140.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.0, 314.0, 300.0, 140.0 ],
					"args" : [ "/output~" ],
					"presentation" : 1,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/noise~",
					"name" : "jmod.noise~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 300.0, 70.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 439.0, 209.0, 300.0, 70.0 ],
					"args" : [ "/noise~" ],
					"presentation" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- open inspector to edit layouts",
					"fontsize" : 11.230778,
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 223.0, 575.0, 199.0, 19.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 232.0, 576.0, 205.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 174.0, 513.0, 38.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 20.0, 494.0, 50.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store $1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"presentation_rect" : [ 173.0, 531.0, 94.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 514.0, 94.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 73.0, 515.0, 38.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 18.0, 443.0, 50.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall $1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"presentation_rect" : [ 71.0, 533.0, 94.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 18.0, 463.0, 94.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout will store in it's presets the presentation position + \"include in presentation\" attribute of any named module in this patcher.",
					"linecount" : 4,
					"presentation_linecount" : 3,
					"fontsize" : 12.723935,
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 72.0, 649.0, 280.0, 50.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 66.0, 677.0, 210.0, 65.0 ],
					"presentation" : 1,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "get all modules position (use it when adding new modules to this patch)",
					"linecount" : 3,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 96.0, 555.0, 295.0, 17.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 157.0, 499.0, 126.0, 38.0 ],
					"presentation" : 1,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t none",
					"fontsize" : 9.295724,
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "none" ],
					"fontname" : "Arial",
					"patching_rect" : [ 316.106232, 544.501831, 37.875458, 17.0 ],
					"id" : "obj-65"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "hover",
					"fontsize" : 9.295724,
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 293.003662, 524.564087, 53.369965, 17.0 ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jmod.layout.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"presentation_rect" : [ 71.0, 574.0, 150.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 71.0, 574.0, 150.0, 70.0 ],
					"args" : [  ],
					"presentation" : 1,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 9.295724,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 135.747253, 440.025635, 50.787544, 17.0 ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontsize" : 9.295724,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 135.747253, 458.963379, 47.344322, 17.0 ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 500",
					"fontsize" : 9.295724,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 136.608063, 477.901123, 43.040295, 17.0 ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 75.608063, 554.560425, 17.216118, 17.216118 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 136.608063, 498.560425, 17.216118, 17.216118 ],
					"presentation" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js jmod.layout.locate_patcher.js",
					"fontsize" : 9.676847,
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 137.468872, 542.941406, 145.0, 18.0 ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~",
					"name" : "jmod.limiter~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"presentation_rect" : [ 0.0, 210.0, 300.0, 105.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 360.0, 26.0, 300.0, 105.0 ],
					"args" : [ "/limiter~" ],
					"presentation" : 1,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/degrade~",
					"name" : "jmod.degrade~.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 3,
					"numoutlets" : 3,
					"presentation_rect" : [ 0.0, 140.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 94.0, 161.0, 300.0, 70.0 ],
					"args" : [ "/degrade~" ],
					"presentation" : 1,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 9.295724,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 201.791199, 648.783875, 58.534798, 17.0 ],
					"id" : "obj-54",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"presentation_rect" : [ 0.0, 70.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 36.0, 69.0, 300.0, 70.0 ],
					"args" : [ "/filter~" ],
					"presentation" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0,
					"border" : 1,
					"presentation_rect" : [ 65.0, 482.0, 332.0, 224.0 ],
					"patching_rect" : [ 287.0, 613.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-32"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 1 ],
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
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [ 325.606232, 565.0, 211.5, 565.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [ 302.503662, 565.0, 211.5, 565.0 ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
