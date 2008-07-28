{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 99.0, 44.0, 1138.0, 544.0 ],
		"bglocked" : 0,
		"defrect" : [ 99.0, 44.0, 1138.0, 544.0 ],
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
					"maxclass" : "comment",
					"text" : "min max values",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 327.0, 430.0, 80.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-2",
					"setstyle" : 5,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 776.0, 342.0, 115.0, 69.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /quantity",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 776.0, 254.0, 120.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 776.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /left /right",
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 920.0, 252.0, 130.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /x /y /z",
					"numoutlets" : 4,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "" ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 636.0, 254.0, 118.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 735.0, 330.0, 26.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Right",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 690.0, 330.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fore",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 648.0, 330.0, 30.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fore",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 602.0, 330.0, 30.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Down",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 554.0, 330.0, 34.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Right",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 508.0, 330.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Right Button",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 983.0, 290.0, 65.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left Button",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 925.0, 290.0, 60.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 980.0, 303.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-16",
					"numinlets" : 1,
					"patching_rect" : [ 920.0, 303.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-17",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 723.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 723.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.0, 1.0, 0.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-19",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 678.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 678.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-21",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 636.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 636.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-23",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 590.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 590.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.0, 1.0, 0.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-25",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 542.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 542.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-27",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 496.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 496.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /x /y /z",
					"numoutlets" : 4,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "" ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 496.0, 254.0, 118.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /position /rotation /motion /button",
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "" ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 496.0, 223.0, 572.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /Tx /Ty /Tz /Rx /Ry /Rz /left_button /right_button",
					"numoutlets" : 9,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 223.0, 322.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-225 221",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-32",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 228.0, 446.0, 54.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-294 175",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-33",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 186.0, 425.0, 54.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-243 232",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-34",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 102.0, 425.0, 54.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-241 255",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-35",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 52.0, 446.0, 54.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-214 281",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-36",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 425.0, 54.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-37",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 262.0, 330.0, 26.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Right",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-38",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 217.0, 330.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fore",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-39",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 175.0, 330.0, 30.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fore",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-40",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 129.0, 330.0, 30.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Down",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-41",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 81.0, 330.0, 34.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Right",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-42",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 330.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Right Button",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-43",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 363.0, 290.0, 65.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left Button",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-44",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 305.0, 290.0, 60.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-45",
					"numinlets" : 1,
					"patching_rect" : [ 358.0, 305.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-46",
					"numinlets" : 1,
					"patching_rect" : [ 300.0, 305.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"settype" : 0,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-47",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 250.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 250.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"settype" : 0,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.0, 1.0, 0.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-49",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 205.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-50",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"settype" : 0,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-51",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 163.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-52",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 163.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"settype" : 0,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-53",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 117.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 117.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"settype" : 0,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.0, 1.0, 0.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-55",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 69.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-56",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 69.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"settype" : 0,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"id" : "obj-57",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 23.0, 330.0, 12.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-58",
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 305.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rz",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-59",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 290.0, 19.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ry",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-60",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 210.0, 290.0, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rx",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-61",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 168.0, 290.0, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tz",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-62",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 122.0, 290.0, 19.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ty",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-63",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 74.0, 290.0, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tx",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-64",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 28.0, 290.0, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-207 208",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-65",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 143.0, 446.0, 54.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /raw /cooked",
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-66",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 189.0, 140.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The module outputs data using a GDIF namespace",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-67",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 27.0, 83.0, 426.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use the Space Navigator from 3D Connexion",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-68",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 38.0, 326.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.spacenavigator",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-69",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 10.0, 313.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-70",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 339.0, 65.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/wacom",
					"args" : [ "/spacenavigator" ],
					"numoutlets" : 1,
					"name" : "jmod.spacenavigator.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-71",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 114.0, 150.0, 72.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 3 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 2 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 643.75, 247.0, 645.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 93.0, 211.0, 505.5, 211.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 7 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 6 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 5 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 4 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 3 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 2 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
