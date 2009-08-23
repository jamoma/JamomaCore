{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 196.0, 387.0, 1223.0, 497.0 ],
		"bglocked" : 0,
		"defrect" : [ 196.0, 387.0, 1223.0, 497.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 1000,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-1",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 362.0, 308.0, 249.0, 55.0 ],
					"text" : "...weird enough, if all params set to 0 the signal's levels are changed anyways. Thus, for now needs nasty unpackin/packing into multicable to have bypass"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 54.0, 94.0, 418.0, 197.0 ],
						"bglocked" : 0,
						"defrect" : [ 54.0, 94.0, 418.0, 197.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 14.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 80.0, 116.0, 17.0 ],
									"text" : "www.grahamwakefield.net"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-39",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 68.0, 110.0, 17.0 ],
									"text" : "Graham Wakefield, 2006"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-10",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 15.0, 150.0, 48.0 ],
									"text" : "based on Graham Wakefield's ambisonic tools"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 508.0, 25.0, 60.0, 23.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 14.0,
						"fontface" : 0,
						"fontsize" : 14.0,
						"globalpatchername" : ""
					}
,
					"text" : "p Notes"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-82",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 579.799988, 94.0, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 229.0, 51.0, 37.0, 17.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-81",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 579.799988, 58.0, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 229.0, 36.0, 37.0, 17.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-80",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 579.799988, 28.0, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 229.0, 21.0, 37.0, 17.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-76",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 202.0, 53.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 62.0, 52.0, 19.0, 17.0 ],
					"text" : "Z"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 202.0, 39.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 62.0, 37.0, 19.0, 17.0 ],
					"text" : "Y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 202.0, 25.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 62.0, 22.0, 19.0, 17.0 ],
					"text" : "X"
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0 ],
					"id" : "obj-65",
					"itemtype" : 1,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 579.799988, 235.0, 21.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.0, 51.0, 18.0, 18.0 ],
					"size" : 1,
					"values" : [ 0 ],
					"varname" : "Meter"
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0 ],
					"id" : "obj-66",
					"itemtype" : 1,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 579.799988, 201.0, 21.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.0, 36.0, 18.0, 18.0 ],
					"size" : 1,
					"values" : [ 0 ],
					"varname" : "Meter[1]"
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0 ],
					"id" : "obj-68",
					"itemtype" : 1,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 579.799988, 167.0, 21.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.0, 21.0, 18.0, 18.0 ],
					"size" : 1,
					"values" : [ 0 ],
					"varname" : "Meter[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-69",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 629.0, 160.0, 590.0, 31.0 ],
					"text" : "jcom.parameter flip/x @type boolean @repetitions/allow 0 @range/bounds 0 1 @value/default 0 @description \"Flip soundfield along the x axis\"",
					"varname" : "voices[5]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-67",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 629.0, 194.0, 590.0, 31.0 ],
					"text" : "jcom.parameter flip/y @type boolean @repetitions/allow 0 @range/bounds 0 1 @value/default 0 @description \"Flip soundfield along the y axis\"",
					"varname" : "voices[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-61",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 629.0, 228.0, 589.0, 31.0 ],
					"text" : "jcom.parameter flip/z @type boolean @repetitions/allow 0 @range/bounds 0 1 @value/default 0 @description \"Flip soundfield along the z axis\"",
					"varname" : "voices[3]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-60",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 629.0, 88.0, 570.0, 31.0 ],
					"text" : "jcom.parameter rotate/z @type decimal @repetitions/allow 0 @range/bounds 0 360 @range/clipmode wrap @value/default 0. @description \"The amount of rotation of the x-axis (pitch) in degrees\"",
					"varname" : "voices[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-58",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 629.0, 55.0, 570.0, 31.0 ],
					"text" : "jcom.parameter rotate/y @type decimal @repetitions/allow 0 @range/bounds 0 360 @range/clipmode wrap @value/default 0. @description \"The amount of rotation of the y-axis (roll) in degrees\"",
					"varname" : "voices[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 407.0, 269.0, 92.0, 32.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 117.0, 151.0, 153.0, 18.0 ],
					"text" : "/audio/gain 100."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 17,
					"numoutlets" : 16,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 92.0, 285.0, 235.0, 20.0 ],
					"text" : "jalg.sur.ambiManipulate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 32,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 97.0, 229.0, 277.5, 19.0 ],
					"text" : "jcom.multi.out~",
					"varname" : "multi[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 32,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 92.0, 343.0, 263.0, 19.0 ],
					"text" : "jcom.multi.in~",
					"varname" : "multi"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 32,
					"numoutlets" : 33,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"patching_rect" : [ 92.0, 319.0, 269.0, 18.0 ],
					"text" : "jcom.out~ 32"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 32,
					"numoutlets" : 34,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "" ],
					"patching_rect" : [ 97.0, 252.0, 277.5, 19.0 ],
					"text" : "jcom.in~ 32"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 187.0, 53.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 209.0, 51.0, 19.0, 17.0 ],
					"text" : "Z"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 187.0, 39.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 209.0, 36.0, 19.0, 17.0 ],
					"text" : "Y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 187.0, 25.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 209.0, 21.0, 19.0, 17.0 ],
					"text" : "X"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 138.0, 24.0, 48.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 166.0, 21.0, 43.0, 19.0 ],
					"text" : "Rotate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 263.0, 38.0, 34.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 268.0, 50.0, 31.0, 17.0 ],
					"text" : "Pitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 629.0, 266.0, 596.0, 29.0 ],
					"text" : "jcom.message report @repetitions/allow 1 @type generic @description \"reports the state of the ambi.rotate~ and ambi.mirror~ externals in the max window\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 301.0, 107.0, 196.0, 17.0 ],
					"text" : "/preset/store 1 default, /preset/write"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 124.0, 395.0, 206.0, 19.0 ],
					"text" : "----multicable signal output----"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 107.0, 160.0, 17.0 ],
					"text" : "/documentation/generate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 263.0, 52.0, 33.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 268.0, 36.0, 30.0, 17.0 ],
					"text" : "Roll"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 263.0, 24.0, 34.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 268.0, 22.0, 31.0, 17.0 ],
					"text" : "Yaw"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Channel 1",
					"id" : "obj-25",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 92.0, 390.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "W - omni",
					"id" : "obj-26",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.0, 199.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 126.0, 203.0, 207.0, 19.0 ],
					"text" : "----multicable signal input----"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1.0, 152.0, 567.0, 19.0 ],
					"text" : "jcom.hub @description \"Manipulate an ambisonic soundfield by flipping or rotating along the 3 principal axes.\"",
					"varname" : "jcom.hub"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 107.0, 100.0, 19.0 ],
					"text" : "command input"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-36",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1.0, 107.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 25.0, 48.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 20.0, 28.0, 19.0 ],
					"text" : "Flip"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-42",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 247.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-44",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 629.0, 21.0, 570.0, 31.0 ],
					"text" : "jcom.parameter rotate/x @type decimal @repetitions/allow 0 @range/bounds 0 360 @range/clipmode wrap @value/default 0. @description \"The amount of rotation of the x-axis (yaw) in degrees\"",
					"varname" : "voices"
				}

			}
, 			{
				"box" : 				{
					"has_bypass" : 1,
					"has_gain" : 1,
					"has_mute" : 1,
					"id" : "obj-46",
					"maxclass" : "jcom.ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 1.0, 300.0, 70.0 ],
					"prefix" : "audio",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"text" : "/editing_this_module"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 357.166656, 277.5, 101.5, 277.5 ],
					"source" : [ "obj-48", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 15 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 14 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 13 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 12 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 11 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 10 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 9 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 8 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 7 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 6 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 5 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 4 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 4 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 5 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 6 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 7 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 8 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 9 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 10 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 11 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 12 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 13 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 14 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 15 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 16 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 31 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 30 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 29 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 28 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 27 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 26 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 25 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 24 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 23 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 22 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 21 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 20 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 19 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 18 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 17 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 16 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 4 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 5 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 6 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 7 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 8 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 9 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 10 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 11 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 12 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 13 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 14 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 15 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 16 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 17 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 18 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 19 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 20 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 21 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 22 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 23 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 24 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 25 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 26 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 27 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 28 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 29 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 30 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 31 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 4 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 5 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 6 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 7 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 8 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 9 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 10 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 11 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 12 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 13 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 14 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 15 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 16 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 18 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 19 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 20 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 21 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 23 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 24 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 25 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 26 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 27 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 28 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 29 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 30 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 31 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 17 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 22 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 145.5, 137.0, 13.0, 137.0, 13.0, 149.0, 10.5, 149.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 310.5, 137.0, 13.0, 137.0, 13.0, 149.0, 10.5, 149.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ]
	}

}
