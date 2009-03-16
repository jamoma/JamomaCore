{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 9.0, 44.0, 679.0, 425.0 ],
		"bglocked" : 0,
		"defrect" : [ 9.0, 44.0, 679.0, 425.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
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
					"text" : "press here ==>",
					"patching_rect" : [ 516.0, 94.0, 92.0, 17.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /nvt",
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.0, 111.0, 61.0, 17.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_scope" : 1,
					"presentation_rect" : [ 583.0, 94.0, 63.0, 14.349121 ],
					"outlettype" : [ "" ],
					"#init" : "",
					"patching_rect" : [ 583.0, 94.0, 63.0, 14.349121 ],
					"id" : "obj-3",
					"#triggerall" : 0,
					"fontname" : "Arial",
					"#untuple" : 0,
					"text" : [ "_nvt $my-nvt" ],
					"numinlets" : 2,
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"ftm_scope" : 2,
					"presentation_rect" : [ 583.0, 73.0, 58.844727, 16.349121 ],
					"persistence" : 0,
					"outlettype" : [ "", "" ],
					"description" : "dict",
					"patching_rect" : [ 583.0, 73.0, 58.844727, 16.349121 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"name" : "my-nvt",
					"numinlets" : 1,
					"scope" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Adding name value tables to the file should be the last thing you do before pressing record",
					"patching_rect" : [ 4.0, 396.0, 385.0, 17.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "name value tables can also be manually added:",
					"patching_rect" : [ 449.0, 57.0, 225.0, 17.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to add entries to one of the pre-defined name value tables, setup-info or other-info, type in two-word entries in the text boxes, and press return. When done, press the add nvt button to add the name value table to the file.",
					"linecount" : 4,
					"patching_rect" : [ 9.0, 132.0, 279.0, 48.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "nvt's  in the right inlet",
					"patching_rect" : [ 500.0, 166.0, 103.0, 17.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "sdif.record.nvt",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2.0, 66.0, 300.0, 70.0 ],
					"id" : "obj-9",
					"name" : "jmod.sdif.record.nvt.maxpat",
					"args" : [ "sdif.record.nvt" ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "adding name value tables to recorded sdif-files",
					"patching_rect" : [ 12.0, 28.0, 222.0, 17.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sdif.record.nvt",
					"patching_rect" : [ 12.0, 0.0, 313.0, 27.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"patching_rect" : [ 0.0, 0.0, 339.0, 65.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "sdif.record",
					"presentation_rect" : [ 0.0, 0.0, 600.0, 210.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2.0, 184.0, 600.0, 210.0 ],
					"id" : "obj-13",
					"name" : "jmod.sdif.record.maxpat",
					"args" : [ "sdif.record" ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 292.5, 148.0, 592.5, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
