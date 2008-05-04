{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 72.0, 66.0, 316.0, 445.0 ],
		"bglocked" : 0,
		"defrect" : [ 72.0, 66.0, 316.0, 445.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 1",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 33.0, 177.0, 50.0, 30.0 ],
					"hidden" : 1,
					"id" : "obj-1",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument: The number of parameters to link",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 102.0, 235.0, 18.0 ],
					"id" : "obj-2",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print 3",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 184.0, 319.0, 49.0, 18.0 ],
					"id" : "obj-3",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print 2",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 155.0, 337.0, 49.0, 18.0 ],
					"id" : "obj-4",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print 1",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 126.0, 355.0, 49.0, 18.0 ],
					"id" : "obj-5",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print 0",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 97.0, 373.0, 49.0, 18.0 ],
					"id" : "obj-6",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"outlettype" : [ "" ],
					"numinlets" : 1,
					"patching_rect" : [ 184.0, 162.0, 24.0, 94.0 ],
					"id" : "obj-7",
					"numoutlets" : 1,
					"orientation" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"outlettype" : [ "" ],
					"numinlets" : 1,
					"patching_rect" : [ 155.0, 162.0, 24.0, 94.0 ],
					"id" : "obj-8",
					"numoutlets" : 1,
					"orientation" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"outlettype" : [ "" ],
					"numinlets" : 1,
					"patching_rect" : [ 126.0, 162.0, 24.0, 94.0 ],
					"id" : "obj-9",
					"numoutlets" : 1,
					"orientation" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"outlettype" : [ "" ],
					"numinlets" : 1,
					"patching_rect" : [ 97.0, 162.0, 24.0, 94.0 ],
					"id" : "obj-10",
					"numoutlets" : 1,
					"orientation" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 44.0, 218.0, 15.0, 15.0 ],
					"id" : "obj-11",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "link $1",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 44.0, 239.0, 49.0, 16.0 ],
					"id" : "obj-12",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js jcom.js_link.js 4",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 97.0, 270.0, 106.0, 18.0 ],
					"id" : "obj-13",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.js_link",
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 19.0, 30.0, 189.0, 28.0 ],
					"id" : "obj-14",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "link or unlink gain faders",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 56.0, 134.0, 18.0 ],
					"id" : "obj-15",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 14.0, 273.0, 63.0 ],
					"id" : "obj-16",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 106.5, 306.0, 234.0, 306.0, 234.0, 138.0, 106.5, 138.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
