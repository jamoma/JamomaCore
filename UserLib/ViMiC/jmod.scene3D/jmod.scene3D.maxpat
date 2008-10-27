{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 98.0, 59.0, 1162.0, 706.0 ],
		"bglocked" : 0,
		"defrect" : [ 98.0, 59.0, 1162.0, 706.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "newobj",
					"text" : "prepend Order:",
					"numinlets" : 1,
					"patching_rect" : [ 870.0, 194.0, 78.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-96",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"numinlets" : 2,
					"patching_rect" : [ 658.0, 130.0, 32.5, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-94",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stretch random translate skew rotate",
					"numinlets" : 2,
					"patching_rect" : [ 715.0, 66.0, 172.0, 16.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-102",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stretch random translate skew rotate",
					"presentation_rect" : [ 1.0, 20.0, 297.0, 16.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 637.0, 198.0, 230.0, 16.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-100",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl sect stretch random translate skew rotate",
					"numinlets" : 2,
					"patching_rect" : [ 659.0, 171.0, 233.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-97",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl thin",
					"numinlets" : 2,
					"patching_rect" : [ 659.0, 149.0, 41.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-98",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 264.0, 166.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 719.0, 301.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-89",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 229.0, 166.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 662.0, 301.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-90",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 195.0, 166.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 612.0, 301.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-91",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"numinlets" : 11,
					"patching_rect" : [ 611.0, 273.0, 154.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-92",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter rotate/reference",
					"numinlets" : 1,
					"patching_rect" : [ 768.0, 273.0, 153.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-93",
					"fontname" : "Arial",
					"frozen_object_attributes" : 					{
						"dataspace/unit/active" : "xyz",
						"dataspace/unit/native" : "xyz",
						"type" : "msg_list",
						"dataspace/unit/internal" : "xyz",
						"description" : "reference position from where the rotation is applied",
						"dataspace" : "position"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "roll",
					"presentation_rect" : [ 162.0, 151.0, 38.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 240.0, 68.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-88",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pitch",
					"presentation_rect" : [ 121.0, 150.0, 38.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 53.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-87",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "yaw",
					"presentation_rect" : [ 87.0, 151.0, 30.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 210.0, 38.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-86",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rotate:",
					"presentation_rect" : [ 37.0, 161.0, 52.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 239.0, 170.0, 51.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-85",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter rotate/active",
					"numinlets" : 1,
					"patching_rect" : [ 811.0, 301.0, 159.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-77",
					"fontname" : "Verdana",
					"frozen_object_attributes" : 					{
						"type" : "msg_toggle",
						"description" : "turns on/off rotation"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 5.0, 163.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 776.0, 300.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-78"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 156.0, 166.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 785.0, 355.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-79",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 120.0, 166.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 728.0, 355.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-80",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 84.0, 166.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 678.0, 355.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-81",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"numinlets" : 11,
					"patching_rect" : [ 677.0, 327.0, 154.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-82",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter rotate/angle",
					"numinlets" : 1,
					"patching_rect" : [ 834.0, 327.0, 136.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-83",
					"fontname" : "Arial",
					"frozen_object_attributes" : 					{
						"type" : "msg_list",
						"description" : "rotation angles yaw | pitch | roll  "
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rotation",
					"numinlets" : 1,
					"patching_rect" : [ 842.0, 356.0, 49.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-84",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "z->y",
					"presentation_rect" : [ 263.0, 117.0, 34.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 884.0, 620.0, 34.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-71",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "z->x",
					"presentation_rect" : [ 228.0, 117.0, 34.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 849.0, 620.0, 34.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-72",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y->z",
					"presentation_rect" : [ 194.0, 117.0, 34.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 815.0, 620.0, 34.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-73",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y->x",
					"presentation_rect" : [ 160.0, 117.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 781.0, 620.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-74",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x->z",
					"presentation_rect" : [ 127.0, 117.0, 34.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 748.0, 620.0, 34.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-75",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x->y",
					"presentation_rect" : [ 92.0, 117.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 713.0, 620.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-76",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Skew:",
					"presentation_rect" : [ 31.0, 132.0, 52.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 224.0, 155.0, 51.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-70",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 262.0, 132.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 940.0, 598.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-67",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 227.0, 132.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 887.0, 598.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-68",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 192.0, 132.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 837.0, 598.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-69",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter skew/active",
					"numinlets" : 1,
					"patching_rect" : [ 802.0, 544.0, 154.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-59",
					"fontname" : "Verdana",
					"frozen_object_attributes" : 					{
						"type" : "msg_toggle",
						"description" : "turns on/off skew"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 6.0, 133.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 767.0, 543.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 156.0, 132.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 779.0, 598.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-61",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 121.0, 132.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 726.0, 598.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-62",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 86.0, 132.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 673.0, 598.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-63",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 6",
					"numinlets" : 11,
					"patching_rect" : [ 668.0, 570.0, 154.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-64",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter skew/factor",
					"numinlets" : 1,
					"patching_rect" : [ 825.0, 570.0, 133.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-65",
					"fontname" : "Arial",
					"frozen_object_attributes" : 					{
						"repetitions/allow" : 1,
						"type" : "msg_list",
						"name" : "skew/factor",
						"description" : "list with the skew parameter: x->y | x->z | y->x | y->z | z->x | z->y"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "skew",
					"numinlets" : 1,
					"patching_rect" : [ 931.0, 621.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-66",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 218.0, 344.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-34",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 273.0, 188.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 498.0, 211.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Shuffle:",
					"presentation_rect" : [ 224.0, 190.0, 52.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 209.0, 140.0, 51.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-57",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Translate:",
					"presentation_rect" : [ 25.0, 102.0, 70.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 90.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-56",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter translate/active",
					"numinlets" : 1,
					"patching_rect" : [ 826.0, 436.0, 173.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"frozen_object_attributes" : 					{
						"type" : "msg_toggle"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 6.0, 103.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 791.0, 435.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter order @type msg_list @description \"order of the manilpulation processes random stretch translate\"",
					"numinlets" : 1,
					"patching_rect" : [ 407.0, 103.0, 520.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-53",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 212.0, 100.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 800.0, 490.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-1",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 176.0, 100.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 743.0, 490.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-21",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 140.0, 100.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 693.0, 490.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-28",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"numinlets" : 11,
					"patching_rect" : [ 692.0, 462.0, 154.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-45",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter translate/factor",
					"numinlets" : 1,
					"patching_rect" : [ 849.0, 462.0, 149.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-46",
					"fontname" : "Arial",
					"frozen_object_attributes" : 					{
						"dataspace/unit/active" : "xyz",
						"dataspace/unit/native" : "xyz",
						"type" : "msg_list",
						"dataspace/unit/internal" : "xyz",
						"dataspace" : "position"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- translation ",
					"numinlets" : 1,
					"patching_rect" : [ 857.0, 491.0, 70.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-50",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Random:",
					"presentation_rect" : [ 28.0, 79.0, 54.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 200.0, 64.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-52",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 6.0, 82.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 368.0, 436.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 83.0, 80.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 377.0, 405.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"id" : "obj-49",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 212.0, 81.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 487.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-29",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 176.0, 81.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 413.0, 487.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-31",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 140.0, 81.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 363.0, 487.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-35",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"numinlets" : 11,
					"patching_rect" : [ 362.0, 459.0, 154.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-36",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter random/factor",
					"numinlets" : 1,
					"patching_rect" : [ 519.0, 459.0, 144.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-42",
					"fontname" : "Arial",
					"frozen_object_attributes" : 					{
						"type" : "msg_list"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter random",
					"numinlets" : 1,
					"patching_rect" : [ 429.0, 435.0, 133.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"frozen_object_attributes" : 					{
						"type" : "msg_symbol",
						"description" : "allowed attributes x, y, z, xy,xz,yz"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter random/mode",
					"numinlets" : 1,
					"patching_rect" : [ 419.0, 404.0, 166.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-47",
					"fontname" : "Verdana",
					"frozen_object_attributes" : 					{
						"type" : "msg_int",
						"description" : "random mod: 0 no random effect, 1: noise is added to the incoming position (something like drunk), 2 noise value overwrites current position completelt",
						"range/bounds" : [ 0.0, 2.0 ],
						"range/clipmode" : "both"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- random",
					"numinlets" : 1,
					"patching_rect" : [ 527.0, 488.0, 150.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-48",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 113.0, 40.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 406.0, 75.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"id" : "obj-17",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter sources/amount",
					"numinlets" : 1,
					"patching_rect" : [ 452.0, 75.0, 154.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"frozen_object_attributes" : 					{
						"type" : "msg_int",
						"name" : "sources/amount",
						"description" : "maximum number of sources in the scene",
						"range/bounds" : [ 1.0, 32.0 ],
						"range/clipmode" : "both"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 212.0, 62.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 123.0, 490.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-26",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 176.0, 62.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 66.0, 490.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-18",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 140.0, 62.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 490.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-15",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"numinlets" : 11,
					"patching_rect" : [ 15.0, 462.0, 154.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-9",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter stretch/reference",
					"numinlets" : 1,
					"patching_rect" : [ 172.0, 462.0, 158.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"frozen_object_attributes" : 					{
						"dataspace/unit/active" : "xyz",
						"dataspace/unit/native" : "xyz",
						"type" : "msg_list",
						"dataspace/unit/internal" : "xyz",
						"description" : "point in space (x|y|z) to which the stretching operation is perfomed",
						"dataspace" : "position"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter stretch/active",
					"numinlets" : 1,
					"patching_rect" : [ 72.0, 436.0, 164.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"frozen_object_attributes" : 					{
						"type" : "msg_toggle",
						"description" : "activates stretching"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 5.0, 62.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 37.0, 435.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 83.0, 62.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 409.0, 50.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-7",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stretch:",
					"presentation_rect" : [ 23.0, 61.0, 73.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 194.0, 43.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter stretch/factor",
					"numinlets" : 1,
					"patching_rect" : [ 71.0, 410.0, 163.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-3",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- streching ",
					"numinlets" : 1,
					"patching_rect" : [ 180.0, 491.0, 150.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-30",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message shuffle @description \"shuffles position of sources around\"",
					"numinlets" : 1,
					"patching_rect" : [ 499.0, 245.0, 333.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-27",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 252.0, 41.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 408.0, 54.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"id" : "obj-12",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[2]",
					"text" : "jcom.parameter dimensions",
					"numinlets" : 1,
					"patching_rect" : [ 452.0, 53.0, 151.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"frozen_object_attributes" : 					{
						"type" : "msg_int",
						"range/bounds" : [ 1.0, 3.0 ],
						"range/clipmode" : "both"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimensions:",
					"presentation_rect" : [ 183.0, 40.0, 73.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 23.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of sources:",
					"presentation_rect" : [ 7.0, 39.0, 110.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 24.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-40",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jcom.scene3DInstance 32",
					"numinlets" : 1,
					"patching_rect" : [ 413.0, 32.0, 173.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter listen @type msg_toggle @description \"listen to input messages or not\"",
					"numinlets" : 1,
					"patching_rect" : [ 474.0, 10.0, 399.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-20",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation_rect" : [ 225.0, 2.0, 57.0, 15.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 413.0, 10.0, 59.0, 16.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"presentation" : 1,
					"rounded" : 8.0,
					"mode" : 1,
					"outlettype" : [ "", "", "int" ],
					"texton" : "Listen On",
					"text" : "Listen Off",
					"id" : "obj-19",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pcontrol",
					"numinlets" : 1,
					"patching_rect" : [ 105.0, 304.0, 54.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 119.0, 46.0, 18.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t open",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 38.0, 18.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "open" ],
									"id" : "obj-9",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 197.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p inspector",
					"numinlets" : 1,
					"patching_rect" : [ 105.0, 324.0, 59.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 169.0, 147.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"numinlets" : 1,
					"patching_rect" : [ 105.0, 282.0, 128.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-6",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- rotation of soundfield\n- add | delete sound sources\n- shuffling\n- mirroring \n- individual position",
					"linecount" : 5,
					"numinlets" : 1,
					"patching_rect" : [ 334.0, 571.0, 159.0, 64.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-2",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"patching_rect" : [ 38.0, 181.0, 251.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 1,
					"patching_rect" : [ 105.0, 260.0, 56.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-24",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"patching_rect" : [ 228.0, 201.0, 40.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.scene3D",
					"numinlets" : 1,
					"patching_rect" : [ 259.0, 276.0, 107.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-33",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.scene3D @description \"spatial manipulation for 3D-audio scenes\"",
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 231.0, 420.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-37",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 3.0, 181.0, 22.0, 22.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 271.0, 22.0, 22.0 ],
					"numoutlets" : 0,
					"id" : "obj-39",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"patching_rect" : [ 63.0, 201.0, 159.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-43",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"has_panel" : 1,
					"id" : "obj-16"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-100", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 1 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 10 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-82", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 1 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 2 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-82", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-82", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-64", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-64", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-64", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 5 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 4 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 3 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-64", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-64", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 2 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 10 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-64", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-45", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 10 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-45", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 10 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-9", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 10 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-36", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-92", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-92", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 2 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 1 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 10 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-92", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 237.5, 224.0, 12.5, 224.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 72.5, 224.0, 12.5, 224.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 224.0, 12.5, 224.0 ]
				}

			}
 ]
	}

}
