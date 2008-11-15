{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 195.0, 193.0, 402.0, 497.0 ],
		"bglocked" : 0,
		"defrect" : [ 195.0, 193.0, 402.0, 497.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
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
					"maxclass" : "comment",
					"text" : "Many thanks to Charles Bascou, GMEM, for his help !",
					"patching_rect" : [ 90.0, 450.0, 277.0, 19.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 47.0, 414.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes :",
					"patching_rect" : [ 60.0, 270.0, 68.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 53.0, 272.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "load a Jamoma patcher and press the bang below",
					"patching_rect" : [ 35.0, 155.0, 322.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 35.0, 154.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.osc2opml",
					"patching_rect" : [ 40.0, 35.0, 197.0, 28.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Utility to make a .opml file describing a Jamoma patcher's namespace",
					"linecount" : 2,
					"patching_rect" : [ 40.0, 70.0, 245.0, 31.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 35.0, 30.0, 295.0, 72.0 ],
					"id" : "obj-25",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This component analyzes the whole Jamoma namespace and generates a .opml document ",
					"linecount" : 2,
					"patching_rect" : [ 35.0, 110.0, 322.0, 31.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@attributes: 1 ...including all attributes / 0 : excluding them",
					"patching_rect" : [ 39.0, 374.0, 333.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@sortmode: 0 ... sorted as a rigorous OSC namespace",
					"patching_rect" : [ 40.0, 334.0, 333.0, 19.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@sortmode: 1 ... sorted in parameter | messages | values : reflects the actual Jamoma implementation",
					"linecount" : 2,
					"patching_rect" : [ 40.0, 300.0, 333.0, 31.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 41.0, 205.0, 20.0, 20.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.osc2opml @name MyPatch @sortmode 0 @attributes 1",
					"patching_rect" : [ 40.0, 230.0, 316.0, 18.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
