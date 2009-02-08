{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 100.0, 62.0, 1164.0, 374.0 ],
		"bglocked" : 0,
		"defrect" : [ 100.0, 62.0, 1164.0, 374.0 ],
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
					"maxclass" : "bpatcher",
					"varname" : "/midiin",
					"args" : [ "/midiin" ],
					"patching_rect" : [ 951.0, 92.0, 150.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-12",
					"numinlets" : 1,
					"name" : "jmod.midiin.maxpat",
					"presentation_rect" : [ 120.0, 120.0, 150.0, 70.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multi-directional mapping between bcf2000 fader 1, output gain and your favorite sequencer CC11 (use mapping-for-jmod.mapper & rythme+conductor+CC.mid provided)",
					"fontsize" : 12.0,
					"patching_rect" : [ 24.0, 60.0, 913.0, 20.0 ],
					"fontname" : "Arial",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper",
					"args" : [ "/mapper" ],
					"patching_rect" : [ 329.0, 92.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-35",
					"numinlets" : 1,
					"name" : "jmod.mapper.maxpat",
					"presentation_rect" : [ 120.0, 120.0, 300.0, 140.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"args" : [ "/output~" ],
					"patching_rect" : [ 642.0, 93.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"numinlets" : 3,
					"name" : "jmod.output~.maxpat",
					"presentation_rect" : [ 75.0, 75.0, 300.0, 140.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.bcf2000[1]",
					"args" : [ "/bcf2000" ],
					"patching_rect" : [ 19.0, 92.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-17",
					"numinlets" : 1,
					"name" : "jmod.bcf2000.maxpat",
					"presentation_rect" : [ 30.0, 30.0, 300.0, 70.0 ],
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [  ]
	}

}
