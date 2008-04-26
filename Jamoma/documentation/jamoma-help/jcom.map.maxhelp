{
	"patcher" : 	{
		"rect" : [ 34.0, 100.0, 932.0, 462.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 34.0, 100.0, 932.0, 462.0 ],
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
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "autohelp",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 773.0, 368.0, 55.0, 20.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontname" : "Verdana",
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 428.0, 379.0, 39.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-1",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setParameter coefficient $1",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 428.0, 400.0, 174.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"types" : [  ],
					"patching_rect" : [ 411.0, 293.0, 100.0, 18.0 ],
					"numoutlets" : 3,
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"items" : [ "none", ",", "point", ",", "axis" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend setParameter symmetry",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 411.0, 319.0, 195.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 126.0, 188.0, 39.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-5",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setParameter powerValue $1",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 126.0, 209.0, 154.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 831.0, 221.0, 39.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-7",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 778.0, 221.0, 39.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-8",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "outputMax $1",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 831.0, 265.0, 88.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "outputMin $1",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 778.0, 292.0, 85.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "\/ 127.",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 831.0, 185.0, 52.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"numinlets" : 2,
					"patching_rect" : [ 778.0, 20.0, 18.0, 130.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "\/ 127.",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 778.0, 184.0, 52.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 701.0, 220.0, 39.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-14",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 648.0, 220.0, 39.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-15",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "inputMax $1",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 701.0, 264.0, 81.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "inputMin $1",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 648.0, 291.0, 76.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "\/ 127.",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 701.0, 184.0, 52.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"numinlets" : 2,
					"patching_rect" : [ 648.0, 19.0, 18.0, 130.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "input",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 176.0, 78.0, 32.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "functionParameters",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 438.0, 200.0, 119.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "outputRange",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 438.0, 157.0, 77.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "inputRange",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 438.0, 128.0, 70.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "\/ 127.",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 648.0, 183.0, 52.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 62.0, 319.0, 256.0, 89.0 ],
					"numoutlets" : 2,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-28",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setstyle" : 2,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 62.0, 103.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 3000",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 62.0, 130.0, 79.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0, 1. 3000",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 62.0, 153.0, 74.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line 0. 40",
					"numinlets" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 62.0, 180.0, 64.0, 18.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 222.0, 118.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 282.0, 153.0, 39.0, 16.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route menu",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 181.0, 275.0, 73.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"types" : [  ],
					"patching_rect" : [ 282.0, 180.0, 100.0, 18.0 ],
					"numoutlets" : 3,
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-36",
					"items" : [ "cosine", ",", "linear", ",", "lowpass", ",", "power", ",", "tanh" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend function",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 282.0, 207.0, 103.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 62.0, 291.0, 39.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-38",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.map @function linear",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 62.0, 249.0, 157.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 62.0, 211.0, 39.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-40",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bang will build a menu with all of the available Jamoma functions in FunctionLib",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 239.0, 107.0, 169.0, 42.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The functions are implemented as part of the Jamoma FunctionLib.",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 19.0, 441.0, 372.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use this for the lowpass (smoother) function",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 467.0, 372.0, 159.0, 30.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "ObjectName",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"patching_rect" : [ 10.0, 8.0, 485.0, 30.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontname" : "Verdana",
					"fontface" : 3,
					"id" : "obj-45",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"patching_rect" : [ 10.0, 36.0, 485.0, 21.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-46",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 10.0, 57.0, 485.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "autohelp_top_ref",
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 162.591507, 14.66663 ],
					"numinlets" : 1,
					"textoncolor" : [ 0.27, 0.35, 0.47, 1.0 ],
					"fontsize" : 11.0,
					"spacing_y" : 0.0,
					"fontlink" : 1,
					"patching_rect" : [ 337.408508, 22.0, 162.591507, 14.66663 ],
					"numoutlets" : 3,
					"bgoveroncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int", "", "int" ],
					"fontname" : "Verdana",
					"bgovercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 3,
					"id" : "obj-48",
					"textovercolor" : [ 0.33, 0.45, 0.6, 1.0 ],
					"text" : "open jcom.map reference",
					"spacing_x" : 0.0,
					"textcolor" : [ 0.27, 0.35, 0.47, 1.0 ],
					"bgoncolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_see_title",
					"text" : "See Also:",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 778.0, 372.0, 100.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontface" : 1,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "autohelp_see_menu",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 778.0, 392.0, 130.0, 20.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-51",
					"items" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"background" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 5.0, 495.0, 52.0 ],
					"numoutlets" : 0,
					"grad1" : [ 0.27, 0.35, 0.47, 1.0 ],
					"mode" : 1,
					"id" : "obj-49",
					"grad2" : [ 0.85, 0.85, 0.85, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_see_panel",
					"background" : 1,
					"bgcolor" : [ 0.85, 0.85, 0.85, 0.75 ],
					"numinlets" : 1,
					"patching_rect" : [ 773.0, 368.0, 140.0, 50.0 ],
					"numoutlets" : 0,
					"border" : 2,
					"bordercolor" : [ 0.5, 0.5, 0.5, 0.75 ],
					"id" : "obj-52"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 461.0, 314.0, 420.5, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 332.0, 201.0, 291.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 190.5, 304.0, 398.0, 304.0, 398.0, 177.0, 291.5, 177.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 291.5, 241.0, 71.5, 241.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
