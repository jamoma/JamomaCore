{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 69.0, 869.0, 456.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 869.0, 456.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On its own",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-76",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 609.0, -1.0, 0.0, 0.0 ],
					"patching_rect" : [ 675.0, 15.0, 70.0, 20.0 ],
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On top of panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-75",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 367.0, 2.0, 0.0, 0.0 ],
					"patching_rect" : [ 415.0, 15.0, 96.0, 20.0 ],
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On top of jcom.ui",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-74",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 908.0, 61.0, 0.0, 0.0 ],
					"patching_rect" : [ 120.0, 15.0, 107.0, 20.0 ],
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-52",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 645.0, 205.0, 48.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-53",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 645.0, 305.0, 48.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "umenu",
					"annotation" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-54",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 680.0, 115.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"items" : "umenu"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "toggle",
					"annotation" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-55",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 630.0, 115.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"hint" : "textedit",
					"annotation" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-56",
					"fontname" : "Verdana",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"patching_rect" : [ 625.0, 195.0, 90.0, 40.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"hint" : "slider",
					"annotation" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-57",
					"outlettype" : [ "" ],
					"patching_rect" : [ 720.0, 195.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"hint" : "rslider",
					"annotation" : "rslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-58",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 745.0, 195.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-59",
					"patching_rect" : [ 625.0, 295.0, 90.0, 40.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"hint" : "number~",
					"annotation" : "number~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"sig" : 0.0,
					"id" : "obj-60",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "float" ],
					"mode" : 2,
					"patching_rect" : [ 735.0, 165.0, 56.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p newobject",
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-61",
					"fontname" : "Verdana",
					"patching_rect" : [ 685.0, 140.0, 104.0, 19.0 ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
						"metadata" : [  ],
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-62",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 625.0, 140.0, 55.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"hint" : "gain~",
					"annotation" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-63",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 770.0, 195.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "number",
					"annotation" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-64",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 680.0, 165.0, 50.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "flonum",
					"annotation" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-65",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 625.0, 165.0, 50.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"hint" : "ezdac~",
					"annotation" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"id" : "obj-66",
					"patching_rect" : [ 740.0, 345.0, 55.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"hint" : "ezadc~",
					"annotation" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-67",
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 680.0, 345.0, 55.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-68",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 645.0, 255.0, 48.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-69",
					"outlettype" : [ "", "" ],
					"types" : [  ],
					"patching_rect" : [ 625.0, 245.0, 90.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "dial",
					"annotation" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-70",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 625.0, 345.0, 55.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-71",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 630.0, 90.0, 150.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "button",
					"annotation" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-72",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 655.0, 115.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 338.0, 129.0, 0.0, 0.0 ],
					"patching_rect" : [ 395.0, 200.0, 48.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-32",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 338.0, 229.0, 0.0, 0.0 ],
					"patching_rect" : [ 395.0, 300.0, 48.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "umenu",
					"annotation" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 373.0, 39.0, 0.0, 0.0 ],
					"types" : [  ],
					"patching_rect" : [ 430.0, 110.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"items" : "umenu"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "toggle",
					"annotation" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 323.0, 39.0, 0.0, 0.0 ],
					"patching_rect" : [ 380.0, 110.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"hint" : "textedit",
					"annotation" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-35",
					"fontname" : "Verdana",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"presentation_rect" : [ 318.0, 119.0, 0.0, 0.0 ],
					"patching_rect" : [ 375.0, 190.0, 90.0, 40.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"hint" : "slider",
					"annotation" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 413.0, 119.0, 0.0, 0.0 ],
					"patching_rect" : [ 470.0, 190.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"hint" : "rslider",
					"annotation" : "rslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-37",
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 438.0, 119.0, 0.0, 0.0 ],
					"patching_rect" : [ 495.0, 190.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-38",
					"presentation_rect" : [ 318.0, 219.0, 0.0, 0.0 ],
					"patching_rect" : [ 375.0, 290.0, 90.0, 40.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"hint" : "number~",
					"annotation" : "number~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"sig" : 0.0,
					"id" : "obj-39",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "float" ],
					"presentation_rect" : [ 428.0, 89.0, 0.0, 0.0 ],
					"mode" : 2,
					"patching_rect" : [ 485.0, 160.0, 56.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p newobject",
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-40",
					"fontname" : "Verdana",
					"presentation_rect" : [ 378.0, 64.0, 0.0, 0.0 ],
					"patching_rect" : [ 435.0, 135.0, 104.0, 19.0 ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
						"metadata" : [  ],
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 318.0, 64.0, 0.0, 0.0 ],
					"patching_rect" : [ 375.0, 135.0, 55.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"hint" : "gain~",
					"annotation" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-42",
					"outlettype" : [ "signal", "int" ],
					"presentation_rect" : [ 463.0, 119.0, 0.0, 0.0 ],
					"patching_rect" : [ 520.0, 190.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "number",
					"annotation" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"presentation_rect" : [ 373.0, 89.0, 0.0, 0.0 ],
					"patching_rect" : [ 430.0, 160.0, 50.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "flonum",
					"annotation" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-44",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 318.0, 89.0, 0.0, 0.0 ],
					"patching_rect" : [ 375.0, 160.0, 50.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"hint" : "ezdac~",
					"annotation" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"id" : "obj-45",
					"presentation_rect" : [ 433.0, 269.0, 0.0, 0.0 ],
					"patching_rect" : [ 490.0, 340.0, 55.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"hint" : "ezadc~",
					"annotation" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-46",
					"outlettype" : [ "signal", "signal" ],
					"presentation_rect" : [ 373.0, 269.0, 0.0, 0.0 ],
					"patching_rect" : [ 430.0, 340.0, 55.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 338.0, 179.0, 0.0, 0.0 ],
					"patching_rect" : [ 395.0, 250.0, 48.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-48",
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 318.0, 169.0, 0.0, 0.0 ],
					"types" : [  ],
					"patching_rect" : [ 375.0, 240.0, 90.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "dial",
					"annotation" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-49",
					"outlettype" : [ "float" ],
					"presentation_rect" : [ 318.0, 269.0, 0.0, 0.0 ],
					"patching_rect" : [ 375.0, 340.0, 55.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-50",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 323.0, 14.0, 0.0, 0.0 ],
					"patching_rect" : [ 380.0, 85.0, 150.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "button",
					"annotation" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-51",
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 348.0, 39.0, 0.0, 0.0 ],
					"patching_rect" : [ 405.0, 110.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 594.0, 335.0, 0.0, 0.0 ],
					"patching_rect" : [ 90.0, 195.0, 48.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 596.0, 438.0, 0.0, 0.0 ],
					"patching_rect" : [ 90.0, 295.0, 48.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "umenu",
					"annotation" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-27",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 125.0, 105.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"items" : "umenu"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "toggle",
					"annotation" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 75.0, 105.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"hint" : "textedit",
					"annotation" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"patching_rect" : [ 70.0, 185.0, 90.0, 40.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"hint" : "slider",
					"annotation" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 165.0, 185.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"hint" : "rslider",
					"annotation" : "rslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-22",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 190.0, 185.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-21",
					"patching_rect" : [ 70.0, 285.0, 90.0, 40.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"hint" : "number~",
					"annotation" : "number~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"sig" : 0.0,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "float" ],
					"mode" : 2,
					"patching_rect" : [ 180.0, 155.0, 56.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p newobject",
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"patching_rect" : [ 130.0, 130.0, 104.0, 19.0 ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
						"metadata" : [  ],
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 130.0, 55.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"hint" : "gain~",
					"annotation" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 215.0, 185.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "number",
					"annotation" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 125.0, 155.0, 50.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "flonum",
					"annotation" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 70.0, 155.0, 50.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"hint" : "ezdac~",
					"annotation" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"id" : "obj-10",
					"patching_rect" : [ 185.0, 335.0, 55.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"hint" : "ezadc~",
					"annotation" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 125.0, 335.0, 55.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 146.0, 203.0, 0.0, 0.0 ],
					"patching_rect" : [ 90.0, 245.0, 48.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-5",
					"outlettype" : [ "", "" ],
					"types" : [  ],
					"patching_rect" : [ 70.0, 235.0, 90.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "dial",
					"annotation" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 70.0, 335.0, 55.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 75.0, 80.0, 150.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "button",
					"annotation" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 100.0, 105.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"hint" : "jcom.ui",
					"annotation" : "jcom.ui",
					"text" : "/Jamoma",
					"numinlets" : 1,
					"has_mute" : 1,
					"numoutlets" : 1,
					"id" : "obj-28",
					"has_preview" : 1,
					"outlettype" : [ "" ],
					"has_panel" : 1,
					"has_bypass" : 1,
					"has_meters" : 1,
					"has_gain" : 1,
					"patching_rect" : [ 25.0, 50.0, 300.0, 350.0 ],
					"has_freeze" : 1,
					"has_mix" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-73",
					"presentation_rect" : [ 335.0, -2.0, 0.0, 0.0 ],
					"patching_rect" : [ 350.0, 50.0, 225.0, 350.0 ],
					"rounded" : 15
				}

			}
 ],
		"lines" : [  ]
	}

}
