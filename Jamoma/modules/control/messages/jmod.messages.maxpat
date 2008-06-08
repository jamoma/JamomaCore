{
	"patcher" : 	{
		"rect" : [ 117.0, 44.0, 804.0, 370.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 117.0, 44.0, 804.0, 370.0 ],
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
					"maxclass" : "newobj",
					"varname" : "display\/1[6]",
					"text" : "prepend setitem 0",
					"patching_rect" : [ 646.0, 245.0, 91.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "display\/4",
					"text" : "jcom.parameter display\/4 @type msg_symbol @ramp/drive none @description \"Lower-right display string\"",
					"linecount" : 2,
					"patching_rect" : [ 525.0, 212.0, 253.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-2",
					"numinlets" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "display\/1[4]",
					"text" : "prepend setitem 0",
					"patching_rect" : [ 647.0, 179.0, 91.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "display\/3",
					"text" : "jcom.parameter display\/3 @type msg_symbol @ramp/drive none @description \"Lower-left display string\"",
					"linecount" : 2,
					"patching_rect" : [ 526.0, 146.0, 252.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-4",
					"numinlets" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "display\/1[2]",
					"text" : "prepend setitem 0",
					"patching_rect" : [ 647.0, 113.0, 91.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "display\/2",
					"text" : "jcom.parameter display\/2 @type msg_symbol @ramp/drive none @description \"Secondary\/Digest display string\"",
					"linecount" : 2,
					"patching_rect" : [ 526.0, 80.0, 253.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-6",
					"numinlets" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/display\/1 \"Jamoma Messages\"",
					"patching_rect" : [ 5.0, 182.0, 156.0, 15.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "display\/1[1]",
					"text" : "prepend setitem 0",
					"patching_rect" : [ 646.0, 46.0, 91.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "display\/1",
					"text" : "jcom.parameter display\/1 @type msg_symbol @ramp/drive none @description \"Main\/Headline display string\"",
					"linecount" : 2,
					"patching_rect" : [ 525.0, 13.0, 253.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-9",
					"numinlets" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 15.0, 25.0, 477.0, 49.0 ],
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-10",
					"numinlets" : 1,
					"menumode" : 2,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"numoutlets" : 3,
					"fontsize" : 31.599998,
					"items" : "Jamoma Messages",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 255.0, 92.0, 237.0, 23.0 ],
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-11",
					"numinlets" : 1,
					"menumode" : 2,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"numoutlets" : 3,
					"fontsize" : 12.288889,
					"items" : [  ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 17.0, 69.0, 475.0, 23.0 ],
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-12",
					"numinlets" : 1,
					"menumode" : 2,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"numoutlets" : 3,
					"fontsize" : 12.288889,
					"items" : [ "Interactive", "Performance", "Environment" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 17.0, 92.0, 237.0, 23.0 ],
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-13",
					"numinlets" : 1,
					"menumode" : 2,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"numoutlets" : 3,
					"fontsize" : 12.288889,
					"items" : "Welcome...",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preset\/store 1 default, preset\/write",
					"patching_rect" : [ 209.0, 212.0, 179.0, 15.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-14",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"patching_rect" : [ 71.0, 291.0, 38.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-15",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"patching_rect" : [ 40.0, 212.0, 125.0, 15.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"patching_rect" : [ 140.0, 287.0, 65.0, 26.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-17",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"patching_rect" : [ 167.0, 212.0, 37.0, 15.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-18",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.messages @size 2U @module_type control @description \"Message Display\"",
					"linecount" : 2,
					"patching_rect" : [ 18.0, 239.0, 233.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 18.0, 213.0, 13.0, 13.0 ],
					"hidden" : 1,
					"id" : "obj-20",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 18.0, 298.0, 13.0, 13.0 ],
					"hidden" : 1,
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 5.0, 22.0, 499.0, 93.0 ],
					"rounded" : 15,
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jcom.gui.1Uh.a.stereo.mxt",
					"patching_rect" : [ 0.0, 0.0, 511.0, 121.0 ],
					"name" : "jcom.gui.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-23",
					"numinlets" : 0,
					"numoutlets" : 0,
					"args" : [  ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 14.5, 236.0, 27.5, 236.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 218.5, 233.0, 27.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 176.5, 233.0, 27.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 49.5, 231.0, 27.5, 231.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
