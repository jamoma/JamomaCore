{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 566.0, 159.0, 505.0, 510.0 ],
		"bglocked" : 0,
		"defrect" : [ 566.0, 159.0, 505.0, 510.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "separator",
					"fontsize" : 10.0,
					"patching_rect" : [ 390.0, 160.0, 58.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-23",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"fontsize" : 10.0,
					"patching_rect" : [ 315.0, 45.0, 95.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 385.0, 56.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /",
					"presentation_rect" : [ 195.0, 342.0, 0.0, 0.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 340.0, 60.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend .",
					"fontsize" : 10.0,
					"patching_rect" : [ 220.0, 285.0, 59.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl join",
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 315.0, 41.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-11",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl reg",
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 95.0, 38.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b i",
					"fontsize" : 10.0,
					"patching_rect" : [ 315.0, 100.0, 32.5, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /",
					"fontsize" : 10.0,
					"patching_rect" : [ 240.0, 230.0, 60.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl join",
					"fontsize" : 10.0,
					"patching_rect" : [ 220.0, 260.0, 41.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-5",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack s s",
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 120.0, 64.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend name",
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 415.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print ---",
					"fontsize" : 10.0,
					"patching_rect" : [ 90.0, 470.0, 51.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route name",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 45.0, 69.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-29",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t s b",
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 145.0, 33.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"fontsize" : 10.0,
					"patching_rect" : [ 300.0, 185.0, 32.5, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-19",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter",
					"fontsize" : 10.0,
					"patching_rect" : [ 145.0, 470.0, 91.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 20.0, 33.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-6",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"fontsize" : 10.0,
					"patching_rect" : [ 315.0, 75.0, 58.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 10.0,
					"patching_rect" : [ 315.0, 20.0, 56.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 309.5, 219.0, 229.5, 219.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 399.5, 372.0, 204.5, 372.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
