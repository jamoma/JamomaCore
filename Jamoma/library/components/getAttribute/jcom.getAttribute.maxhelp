{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 171.0, 141.0, 615.0, 374.0 ],
		"bglocked" : 0,
		"defrect" : [ 171.0, 141.0, 615.0, 374.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 460.0, 165.0, 100.0, 18.0 ],
					"fontsize" : 10.0,
					"items" : [ "/control", ",", "/mouse" ],
					"numinlets" : 1,
					"types" : [  ],
					"numoutlets" : 3,
					"id" : "obj-14",
					"presentation_rect" : [ 443.0, 106.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 25.0, 200.0, 150.0, 70.0 ],
					"name" : "jmod.mouse.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-13",
					"args" : [ "/mouse" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 355.0, 165.0, 100.0, 18.0 ],
					"fontsize" : 10.0,
					"items" : [ "value", ",", "type", ",", "range/bounds", ",", "range/clipmode" ],
					"numinlets" : 1,
					"types" : [  ],
					"numoutlets" : 3,
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/control/audio",
					"patching_rect" : [ 395.0, 250.0, 145.0, 16.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-10",
					"presentation_rect" : [ 441.0, 216.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "msg_toggle",
					"patching_rect" : [ 245.0, 250.0, 140.0, 16.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-9",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "cpu",
					"patching_rect" : [ 275.0, 140.0, 35.0, 16.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-7",
					"presentation_rect" : [ 331.0, 129.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "audio",
					"patching_rect" : [ 310.0, 160.0, 35.0, 16.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-6",
					"presentation_rect" : [ 283.0, 131.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 25.0, 130.0, 150.0, 70.0 ],
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-2",
					"args" : [ "/control" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.getAttribute value /control",
					"patching_rect" : [ 275.0, 210.0, 244.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 3,
					"numoutlets" : 2,
					"id" : "obj-29",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.getAttribute",
					"patching_rect" : [ 30.0, 30.0, 251.0, 28.0 ],
					"presentation" : 1,
					"fontsize" : 17.553501,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-32",
					"presentation_rect" : [ 52.0, 56.0, 251.0, 28.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gets the attribute of a parameter/message/return",
					"patching_rect" : [ 31.0, 60.0, 267.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-33",
					"presentation_rect" : [ 53.0, 86.0, 295.0, 19.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 25.0, 20.0, 298.0, 65.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-34",
					"presentation_rect" : [ 46.0, 44.0, 298.0, 65.0 ],
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-29", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-29", 1 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [ 284.5, 238.0, 375.5, 238.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 509.5, 236.0, 530.5, 236.0 ]
				}

			}
 ]
	}

}
