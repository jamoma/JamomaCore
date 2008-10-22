{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 3.0, 44.0, 1005.0, 761.0 ],
		"bglocked" : 0,
		"defrect" : [ 3.0, 44.0, 1005.0, 761.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 9.0,
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
					"maxclass" : "bpatcher",
					"varname" : "/limiter~",
					"presentation_rect" : [ 0.0, 210.0, 300.0, 105.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 360.0, 26.0, 300.0, 105.0 ],
					"presentation" : 1,
					"id" : "obj-35",
					"name" : "jmod.limiter~.maxpat",
					"numinlets" : 3,
					"args" : [ "/limiter~" ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/degrade~",
					"presentation_rect" : [ 0.0, 140.0, 300.0, 70.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 94.0, 161.0, 300.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-28",
					"name" : "jmod.degrade~.maxpat",
					"numinlets" : 3,
					"args" : [ "/degrade~" ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 230.0, 475.0, 50.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 20.0, 445.0, 50.0, 17.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-22",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/layout $1",
					"presentation_rect" : [ 230.0, 494.0, 50.0, 15.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 475.0, 50.0, 15.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-9",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use the preset interface from the topleft menu of the module to edit/name/copy...etc presets",
					"linecount" : 3,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 195.0, 615.0, 318.0, 36.0 ],
					"patching_rect" : [ 198.0, 610.0, 210.0, 50.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-7",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.723935,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"presentation_rect" : [ 300.0, 140.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 435.0, 315.0, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-15",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"args" : [ "/output~" ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/noise~",
					"presentation_rect" : [ 300.0, 70.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 439.0, 209.0, 300.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-16",
					"name" : "jmod.noise~.maxpat",
					"numinlets" : 1,
					"args" : [ "/noise~" ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"presentation_rect" : [ 0.0, 70.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 36.0, 69.0, 300.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-5",
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"args" : [ "/filter~" ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 315.0, 66.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-3",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 334.0, 66.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout must be connected to theses 2 objects in the main patcher",
					"linecount" : 3,
					"patching_rect" : [ 247.0, 529.0, 150.0, 38.0 ],
					"fontname" : "Arial",
					"id" : "obj-20",
					"frgb" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"textcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "demo",
					"presentation_rect" : [ 252.0, 445.0, 33.0, 17.0 ],
					"patching_rect" : [ 42.0, 378.0, 54.0, 17.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-31",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pipe 1000",
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 354.0, 66.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-27",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 229.0, 443.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 19.0, 376.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 1000",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 18.0, 398.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-21",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 1 6",
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 18.0, 418.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-17",
					"numinlets" : 5,
					"fontsize" : 9.0,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout",
					"presentation_rect" : [ 11.0, 8.0, 197.0, 28.0 ],
					"patching_rect" : [ 11.0, 7.0, 197.0, 28.0 ],
					"fontname" : "Verdana",
					"presentation" : 1,
					"id" : "obj-23",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "store position of this patcher's modules into presets",
					"linecount" : 2,
					"presentation_rect" : [ 9.0, 38.0, 272.0, 19.0 ],
					"patching_rect" : [ 11.0, 37.0, 260.0, 31.0 ],
					"fontname" : "Verdana",
					"presentation" : 1,
					"id" : "obj-24",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 3.0, 3.0, 284.0, 59.0 ],
					"patching_rect" : [ 3.0, 2.0, 276.0, 65.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- open inspector to edit layouts",
					"presentation_rect" : [ 191.0, 530.0, 199.0, 19.0 ],
					"patching_rect" : [ 232.0, 576.0, 205.0, 19.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-11",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.230778,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 315.0, 476.0, 38.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 20.0, 494.0, 50.0, 17.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-13",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store $1",
					"presentation_rect" : [ 314.0, 494.0, 94.0, 17.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 514.0, 94.0, 17.0 ],
					"fontname" : "Verdana",
					"presentation" : 1,
					"id" : "obj-14",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout will store in it's presets the presentation position + \"include in presentation\" attribute of any named module in this patcher.",
					"linecount" : 4,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 195.0, 555.0, 280.0, 50.0 ],
					"patching_rect" : [ 428.0, 621.0, 210.0, 65.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-10",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.723935,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t none",
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"outlettype" : [ "none" ],
					"patching_rect" : [ 202.106232, 548.501831, 37.875458, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-65",
					"numinlets" : 1,
					"fontsize" : 9.295724,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "hover",
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 179.003662, 528.564087, 53.369965, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-19",
					"numinlets" : 1,
					"fontsize" : 9.295724,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"presentation_rect" : [ 38.0, 442.0, 150.0, 210.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 71.0, 574.0, 150.0, 210.0 ],
					"presentation" : 1,
					"id" : "obj-2",
					"name" : "jmod.layout.maxpat",
					"numinlets" : 2,
					"args" : [  ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 201.791199, 682.783875, 58.534798, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-54",
					"numinlets" : 1,
					"fontsize" : 9.295724,
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 226.0, 441.0, 61.0, 25.0 ],
					"bgcolor" : [ 0.992157, 0.031373, 0.031373, 0.301961 ],
					"patching_rect" : [ 134.0, 388.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-4",
					"rounded" : 15,
					"border" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 33.0, 437.0, 447.0, 219.0 ],
					"patching_rect" : [ 287.0, 613.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-32",
					"rounded" : 15,
					"border" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-22", 0 ],
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
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-19", 2 ],
					"destination" : [ "obj-65", 0 ],
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
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-15", 1 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-2", 0 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-2", 0 ],
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
