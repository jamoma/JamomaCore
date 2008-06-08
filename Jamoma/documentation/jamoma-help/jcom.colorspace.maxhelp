{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 51.0, 79.0, 649.0, 514.0 ],
		"bglocked" : 0,
		"defrect" : [ 51.0, 79.0, 649.0, 514.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
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
					"maxclass" : "textbutton",
					"varname" : "autohelp_top_ref",
					"spacing_y" : 0.0,
					"outlettype" : [ "int", "", "int" ],
					"textoncolor" : [ 0.27, 0.35, 0.47, 1.0 ],
					"text" : "Credits",
					"fontsize" : 12.0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontlink" : 1,
					"textovercolor" : [ 0.4, 0.5, 0.65, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"presentation_rect" : [ 15.0, 15.0, 50.398438, 14.583984 ],
					"bgovercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"bgoveroncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"patching_rect" : [ 542.204529, 468.0, 50.398438, 14.583984 ],
					"id" : "obj-40",
					"spacing_x" : 0.0,
					"numoutlets" : 3,
					"bgoncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"underline" : 1,
					"textcolor" : [ 0.374, 0.47, 0.614, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or list of ints:",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 38.0, 118.0, 105.0, 18.0 ],
					"id" : "obj-1",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 148.0, 448.0, 81.0, 18.0 ],
					"hidden" : 1,
					"id" : "obj-2",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "packed sends out a single list from the first outlet",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 142.0, 203.0, 396.0, 18.0 ],
					"id" : "obj-3",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "split sends out 3 ints.",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 142.0, 191.0, 395.0, 18.0 ],
					"id" : "obj-4",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "outputtype",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 39.0, 191.0, 116.0, 18.0 ],
					"id" : "obj-5",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "autopack (1/0):",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 39.0, 224.0, 118.0, 18.0 ],
					"id" : "obj-6",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(split or packed):",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 39.0, 203.0, 117.0, 18.0 ],
					"id" : "obj-7",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mode:",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 39.0, 164.0, 76.0, 18.0 ],
					"id" : "obj-8",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ints,",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 38.0, 106.0, 75.0, 18.0 ],
					"id" : "obj-9",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.colorspace",
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 21.0, 18.0, 229.0, 28.0 ],
					"id" : "obj-10",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "colorspace conversion",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 21.0, 43.0, 345.0, 18.0 ],
					"id" : "obj-11",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 13.0, 400.0, 50.0 ],
					"id" : "obj-12",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 474.0, 62.0, 16.0 ],
					"id" : "obj-13",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 448.0, 74.0, 18.0 ],
					"id" : "obj-14",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend outputtype",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 435.0, 313.0, 109.0, 18.0 ],
					"id" : "obj-15",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.835294, 0.878431, 0.905882, 1.0 ],
					"items" : [ "split", ",", "packed" ],
					"numinlets" : 1,
					"types" : [  ],
					"fontname" : "Verdana",
					"patching_rect" : [ 435.0, 289.0, 99.0, 18.0 ],
					"id" : "obj-16",
					"labelclick" : 1,
					"numoutlets" : 3,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Set the type of conversion to perform on the input.",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 142.0, 166.0, 469.0, 18.0 ],
					"id" : "obj-17",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p credits",
					"fontsize" : 13.482065,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 543.0, 490.0, 94.0, 23.0 ],
					"hidden" : 1,
					"id" : "obj-18",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 257.0, 136.0, 397.0, 227.0 ],
						"bglocked" : 0,
						"defrect" : [ 257.0, 136.0, 397.0, 227.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"outlettype" : [ "front" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 444.0, 82.0, 42.0, 19.0 ],
									"hidden" : 1,
									"id" : "obj-8",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 444.0, 108.0, 67.0, 19.0 ],
									"hidden" : 1,
									"id" : "obj-7",
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 444.0, 51.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-4",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.colorspace is a port to Jamoma of tap.colorspace from TapTools by Tim Place. The conversion routines were taken from Luke Dubois' Percolate Nato external 242.colorspace. His comments below:",
									"linecount" : 3,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 12.0, 18.0, 359.0, 43.0 ],
									"id" : "obj-1",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "242.colorspace -- does colorspace conversion on an input image. by r. luke dubois (luke@music.columbia.edu), computer music center, columbia university, 2001.",
									"linecount" : 3,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 12.0, 70.0, 305.0, 43.0 ],
									"id" : "obj-2",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Most of the color conversion routines in this software are taken from Rafael Santos' color image processing toolkit. The copyright below cites the original author. Objects and source are provided without warranty of any kind, express or implied. Copyright (C) 1996, Rafael Santos. Developed at the Ejima Lab / Department of Artificial Intelligence, Kyushu Institute of Technology.",
									"linecount" : 6,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 12.0, 126.0, 344.0, 79.0 ],
									"id" : "obj-3",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print dump",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 217.0, 409.0, 71.0, 18.0 ],
					"id" : "obj-19",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend mode",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 327.0, 313.0, 83.0, 18.0 ],
					"id" : "obj-20",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"minimum" : 0,
					"maximum" : 255,
					"triscale" : 0.9,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 194.0, 290.0, 36.0, 18.0 ],
					"id" : "obj-21",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"minimum" : 0,
					"maximum" : 255,
					"triscale" : 0.9,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 140.0, 290.0, 36.0, 18.0 ],
					"id" : "obj-22",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"minimum" : 0,
					"maximum" : 360,
					"triscale" : 0.9,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 86.0, 290.0, 36.0, 18.0 ],
					"id" : "obj-23",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 158.0, 412.0, 36.0, 18.0 ],
					"id" : "obj-24",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 122.0, 412.0, 36.0, 18.0 ],
					"id" : "obj-25",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 86.0, 412.0, 36.0, 18.0 ],
					"id" : "obj-26",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.835294, 0.878431, 0.905882, 1.0 ],
					"items" : [ "no_transform", ",", "rgb2cmy", ",", "cmy2rgb", ",", "rgb2hsv", ",", "hsv2rgb", ",", "rgb2xyz", ",", "xyz2rgb", ",", "rgb2uvw", ",", "uvw2rgb", ",", "rgb2retinalcone", ",", "retinalcone2rgb", ",", "rgb2l*a*b ", ",", "l*a*b2rgb", ",", "rgb2yiq", ",", "yiq2rgb", ",", "rgb2hls", ",", "hls2rgb", ",", "rgb2rgbcie", ",", "rgbcie2rgb", ",", "rgb2rgbsmpte", ",", "rgbsmpte2rgb", ",", "rgb2hsl", ",", "hsl2rgb" ],
					"numinlets" : 1,
					"types" : [  ],
					"fontname" : "Verdana",
					"patching_rect" : [ 327.0, 289.0, 99.0, 18.0 ],
					"id" : "obj-27",
					"labelclick" : 1,
					"numoutlets" : 3,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 545.0, 289.0, 15.0, 15.0 ],
					"id" : "obj-28",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "autopack $1",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 545.0, 313.0, 76.0, 16.0 ],
					"id" : "obj-29",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "255 20 97",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 245.0, 290.0, 67.0, 16.0 ],
					"id" : "obj-30",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 290.0, 16.0, 16.0 ],
					"id" : "obj-31",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.colorspace @mode rgb2hsl",
					"linecount" : 2,
					"outlettype" : [ "int", "int", "int", "" ],
					"fontsize" : 9.873845,
					"numinlets" : 3,
					"fontname" : "Verdana",
					"patching_rect" : [ 86.0, 365.0, 126.0, 30.0 ],
					"id" : "obj-32",
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "determines whether or not a new set of calculations is made and output automatically whenever one of the 3 inputs changes.",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 142.0, 223.0, 371.0, 30.0 ],
					"id" : "obj-33",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Most numbers should be in the range of 0 to 255, though there are a couple of exceptions (for example HSL translates as 0-360 0-100 0-100)",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 142.0, 106.0, 374.0, 30.0 ],
					"id" : "obj-34",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Messages",
					"fontsize" : 11.556055,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 21.0, 83.0, 253.0, 21.0 ],
					"id" : "obj-35",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes",
					"fontsize" : 11.556055,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 21.0, 140.0, 253.0, 21.0 ],
					"id" : "obj-36",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 484.5, 309.0, 444.5, 309.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 376.5, 309.0, 336.5, 309.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 3 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 336.5, 347.0, 95.5, 347.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 554.5, 347.0, 95.5, 347.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 347.0, 95.5, 347.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 347.0, 95.5, 347.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 444.5, 347.0, 95.5, 347.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 95.5, 402.0, 79.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-32", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
