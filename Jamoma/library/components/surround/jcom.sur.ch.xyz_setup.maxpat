{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 15.0, 81.0, 1012.0, 662.0 ],
		"bglocked" : 0,
		"defrect" : [ 15.0, 81.0, 1012.0, 662.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 2",
					"outlettype" : [ "int" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 320.0, 420.0, 27.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "list2parameter",
					"text" : "jcom.list2parameter 3",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 245.0, 154.0, 19.0 ],
					"numinlets" : 11,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b i",
					"outlettype" : [ "bang", "bang", "int" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 65.0, 385.0, 48.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess #1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 65.0, 335.0, 74.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1 != 0 then $i1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 65.0, 360.0, 104.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 535.0, 322.0, 28.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf script newdefault parameter 391 245 jcom.parameter xyz/%ld @type msg_list @priority %ld @description \\\"Position of %ldth voice as xyz coodinate.\\\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 450.0, 468.0, 31.0 ],
					"numinlets" : 3,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script connect parameter 1 prepend 0",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 65.0, 540.0, 201.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script connect list2parameter 10 parameter 0, script connect parameter 0 list2parameter 10",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 80.0, 495.0, 251.0, 29.0 ],
					"numinlets" : 2,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 65.0, 570.0, 65.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "prepend",
					"text" : "prepend #1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 535.0, 295.0, 68.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 221.0, 5.0, 53.0, 19.0 ],
					"triangle" : 0,
					"patching_rect" : [ 315.0, 275.0, 53.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 166.0, 5.0, 53.0, 19.0 ],
					"triangle" : 0,
					"patching_rect" : [ 255.0, 275.0, 53.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"annotation" : "",
					"varname" : "X",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 111.0, 5.0, 53.0, 19.0 ],
					"triangle" : 0,
					"patching_rect" : [ 195.0, 275.0, 53.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voice #1:",
					"fontsize" : 10.0,
					"presentation_rect" : [ 10.0, 5.0, 96.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 10.0, 5.0, 96.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 2.0, 2.0, 279.0, 25.0 ],
					"rounded" : 15,
					"patching_rect" : [ 2.0, 2.0, 279.0, 25.0 ],
					"presentation" : 1,
					"border" : 1,
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 103.5, 415.0, 329.5, 415.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 89.5, 564.0, 74.5, 564.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 302.0, 183.0, 302.0, 183.0, 237.0, 204.5, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 304.0, 178.0, 304.0, 178.0, 233.0, 218.0, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [ 324.5, 308.0, 172.0, 308.0, 172.0, 228.0, 231.5, 228.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 10 ],
					"destination" : [ "", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 0,
					"midpoints" : [ 103.5, 415.0, 553.5, 415.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 104.5, 566.0, 74.5, 566.0 ]
				}

			}
 ]
	}

}
