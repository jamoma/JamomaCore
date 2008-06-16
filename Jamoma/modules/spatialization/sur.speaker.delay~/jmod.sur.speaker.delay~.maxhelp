{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 70.0, 86.0, 463.0, 179.0 ],
		"bglocked" : 0,
		"defrect" : [ 70.0, 86.0, 463.0, 179.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
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
					"maxclass" : "message",
					"text" : "jmod.sur.ambi.decode~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 298.0, 106.0, 134.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 298.0, 127.0, 64.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-3",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 150.0, 45.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.speaker.delay~",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 26.0, 386.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Individual delay of up to 16 speakers in surround sound setups to correct for varying distances",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 56.0, 289.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 15.0, 415.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Refer to the ambisonic decode module for further details:",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 107.0, 268.0, 17.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
