{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 54.0, 94.0, 321.0, 94.0 ],
		"bglocked" : 0,
		"defrect" : [ 54.0, 94.0, 321.0, 94.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
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
					"comment" : "",
					"hidden" : 1,
					"id" : "obj-1",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 49.0, 1.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"domain" : [ 0.0, 48000.0 ],
					"id" : "obj-10",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 1.0, 213.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 35.0, 194.0, 49.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
 ]
	}

}
