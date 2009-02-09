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
					"maxclass" : "comment",
					"text" : "It could be useful to have a jmod.midi object, that would provide midi in AND out. This way, sequencer could be controled by the patch...",
					"linecount" : 2,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"presentation_rect" : [ 39.0, 267.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-2",
					"patching_rect" : [ 680.0, 256.0, 439.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/midiin",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 120.0, 120.0, 150.0, 70.0 ],
					"numoutlets" : 2,
					"args" : [ "/midiin" ],
					"id" : "obj-12",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 951.0, 92.0, 150.0, 70.0 ],
					"name" : "jmod.midiin.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multi-directional mapping between bcf2000 fader 1, output gain and your favorite sequencer CC11 (use mapping-for-jmod.mapper & rythme+conductor+CC.mid provided)",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-1",
					"patching_rect" : [ 24.0, 60.0, 913.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 120.0, 120.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"args" : [ "/mapper" ],
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"patching_rect" : [ 329.0, 92.0, 300.0, 140.0 ],
					"name" : "jmod.mapper.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"numinlets" : 3,
					"presentation_rect" : [ 75.0, 75.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"args" : [ "/output~" ],
					"id" : "obj-49",
					"outlettype" : [ "" ],
					"patching_rect" : [ 642.0, 93.0, 300.0, 140.0 ],
					"name" : "jmod.output~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.bcf2000[1]",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 30.0, 30.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"args" : [ "/bcf2000" ],
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 92.0, 300.0, 70.0 ],
					"name" : "jmod.bcf2000.maxpat"
				}

			}
 ],
		"lines" : [  ]
	}

}
