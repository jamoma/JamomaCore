{
	"patcher" : 	{
		"rect" : [ 15.0, 81.0, 814.0, 634.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 15.0, 81.0, 814.0, 634.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 2",
					"outlettype" : [ "int" ],
					"id" : "obj-1",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 239.0, 422.0, 27.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "list2parameter",
					"text" : "jcom.list2parameter.mxt 3",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-2",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 193.0, 245.0, 180.0, 17.0 ],
					"numinlets" : 3,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b i",
					"outlettype" : [ "bang", "bang", "int" ],
					"id" : "obj-3",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 63.0, 386.0, 48.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess #1",
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 63.0, 341.0, 67.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1 != 0 then $i1",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 63.0, 363.0, 96.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-6",
					"hidden" : 1,
					"patching_rect" : [ 521.0, 328.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf script hidden new parameter newex 391 245 270 196617 jcom.parameter xyz\/%ld @type msg_list @priority %ld @description \"Position of %ldth voice as xyz coodinate.\"",
					"linecount" : 3,
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 101.0, 444.0, 287.0, 38.0 ],
					"numinlets" : 3,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script hidden connect parameter 1 prepend 0",
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 63.0, 545.0, 211.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script hidden connect list2parameter 10 parameter 0, script hidden connect parameter 0 list2parameter 10",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 82.0, 489.0, 254.0, 26.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 63.0, 572.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "prepend",
					"text" : "prepend #1",
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 521.0, 301.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Z",
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 291.0, 280.0, 39.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Y",
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 242.0, 280.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar X",
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 193.0, 280.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-15",
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 221.0, 3.0, 53.0, 17.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-16",
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 166.0, 3.0, 53.0, 17.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "X",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-17",
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 111.0, 3.0, 53.0, 17.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voice #1:",
					"id" : "obj-18",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 5.0, 96.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-19",
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 2.0, 2.0, 275.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [ 110.5, 532.0, 72.5, 532.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [ 91.5, 532.0, 72.5, 532.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [ 202.5, 305.0, 184.0, 305.0, 184.0, 233.0, 202.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 1,
					"midpoints" : [ 251.5, 308.0, 178.0, 308.0, 178.0, 229.0, 283.0, 229.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 1,
					"midpoints" : [ 300.5, 311.0, 173.0, 311.0, 173.0, 225.0, 363.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 101.5, 415.0, 248.5, 415.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 1,
					"midpoints" : [ 101.5, 415.0, 378.5, 415.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
