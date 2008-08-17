{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 84.0, 53.0, 1280.0, 726.0 ],
		"bglocked" : 0,
		"defrect" : [ 84.0, 53.0, 1280.0, 726.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
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
					"maxclass" : "newobj",
					"text" : "prepend set Microphone",
					"id" : "obj-10",
					"fontsize" : 12.0,
					"patching_rect" : [ 210.0, 310.0, 140.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "||",
					"id" : "obj-37",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 62.0, 385.0, 21.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 435.347412, 0.0, 18.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "directivity_menu",
					"id" : "obj-24",
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 393.0, 65.0, 114.0, 19.0 ],
					"arrow" : 0,
					"presentation" : 1,
					"labelclick" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"items" : [ "---", ",", "omni", ",", "subcardioid", ",", "cardioid", ",", "supercardioid", ",", "hypercardioid", ",", "figure-eight" ],
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 370.0, 2.0, 68.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "||",
					"id" : "obj-125",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 47.0, 370.0, 21.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 321.0, 0.0, 18.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "||",
					"id" : "obj-124",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 32.0, 355.0, 21.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 235.0, 0.0, 18.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "pvar_aktive",
					"texton" : "Off",
					"id" : "obj-91",
					"fontsize" : 9.0,
					"mode" : 1,
					"patching_rect" : [ 682.0, 195.0, 34.0, 15.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"text" : "On",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 2.0, 2.0, 30.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Microphone #1",
					"id" : "obj-88",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 212.0, 335.0, 89.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 29.0, 1.0, 89.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"id" : "obj-1",
					"fontsize" : 9.0,
					"patching_rect" : [ 201.0, 423.0, 50.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 5",
					"id" : "obj-2",
					"fontsize" : 9.0,
					"patching_rect" : [ 201.0, 403.0, 43.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p creating",
					"id" : "obj-3",
					"fontsize" : 9.0,
					"patching_rect" : [ 132.0, 381.0, 55.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 92.0, 44.0, 927.0, 778.0 ],
						"bglocked" : 0,
						"defrect" : [ 92.0, 44.0, 927.0, 778.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
									"text" : "combine microphones/ 1 /position/z @triggers 1",
									"id" : "obj-119",
									"fontsize" : 12.0,
									"patching_rect" : [ 171.0, 641.0, 264.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine microphones/ 1 /directivity/preset @triggers 1",
									"id" : "obj-118",
									"fontsize" : 12.0,
									"patching_rect" : [ 172.0, 493.0, 300.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine microphones/ 1 /orientation/yaw @triggers 1",
									"id" : "obj-117",
									"fontsize" : 12.0,
									"patching_rect" : [ 176.0, 359.0, 294.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine microphones/ 1 /orientation/pitch @triggers 1",
									"id" : "obj-116",
									"fontsize" : 12.0,
									"patching_rect" : [ 176.0, 199.0, 298.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine microphones/ 1 /gain @triggers 1",
									"id" : "obj-115",
									"fontsize" : 12.0,
									"patching_rect" : [ 182.0, -72.0, 236.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine microphones/ 1 /directivity/ratio @triggers 1",
									"id" : "obj-114",
									"fontsize" : 12.0,
									"patching_rect" : [ 181.0, -211.0, 290.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine microphones/ 1 /orientation @triggers 1",
									"id" : "obj-113",
									"fontsize" : 12.0,
									"patching_rect" : [ 183.0, -365.0, 269.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine microphones/ 1 /position/xyz @triggers 1",
									"id" : "obj-112",
									"fontsize" : 12.0,
									"patching_rect" : [ 183.0, -508.0, 276.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine microphones/ 1 /mute @triggers 1",
									"id" : "obj-105",
									"fontsize" : 12.0,
									"patching_rect" : [ 178.0, 60.0, 240.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-10",
									"fontsize" : 9.0,
									"patching_rect" : [ 516.0, 646.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append",
									"id" : "obj-11",
									"fontsize" : 9.0,
									"patching_rect" : [ 171.0, 720.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append @type msg_float @range/bounds -20. 20. @range/clipmode both @repetitions/allow 0 @description \\\"Z_component_for_position_of_microphone\\\" @priority",
									"id" : "obj-12",
									"fontsize" : 9.0,
									"patching_rect" : [ 171.0, 699.0, 711.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script new message_z newex 239 457 300 196617 jcom.message",
									"id" : "obj-13",
									"fontsize" : 9.0,
									"patching_rect" : [ 171.0, 681.0, 309.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1*10)+8 -10",
									"id" : "obj-17",
									"fontsize" : 9.0,
									"patching_rect" : [ 512.0, 482.0, 108.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-18",
									"fontsize" : 9.0,
									"patching_rect" : [ 512.0, 503.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append",
									"id" : "obj-19",
									"fontsize" : 9.0,
									"patching_rect" : [ 171.0, 575.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append @type msg_symbol @description \\\"Directivity_preset_for_the_microphone\\\" @priority",
									"id" : "obj-20",
									"fontsize" : 9.0,
									"patching_rect" : [ 171.0, 554.0, 470.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script new directivity_preset newex 990 30 270 196617 jcom.message",
									"id" : "obj-21",
									"fontsize" : 9.0,
									"patching_rect" : [ 171.0, 536.0, 377.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-25",
									"fontsize" : 9.0,
									"patching_rect" : [ 517.0, 362.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append",
									"id" : "obj-26",
									"fontsize" : 9.0,
									"patching_rect" : [ 175.0, 434.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append @type msg_float @range/bounds -180. 180. @range/clipmode both @repetitions/allow 0 @description \\\"Yaw_angle_for_the_orientation_of_microphone\\\" @priority",
									"id" : "obj-27",
									"fontsize" : 9.0,
									"patching_rect" : [ 175.0, 413.0, 714.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script new message_azi newex 750 280 300 196617 jcom.message",
									"id" : "obj-28",
									"fontsize" : 9.0,
									"patching_rect" : [ 175.0, 395.0, 356.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-32",
									"fontsize" : 9.0,
									"patching_rect" : [ 501.0, 214.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append",
									"id" : "obj-33",
									"fontsize" : 9.0,
									"patching_rect" : [ 176.0, 287.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append @type msg_float @range/bounds -90. 90. @range/clipmode both @repetitions/allow 0 @description \\\"Pitch_angle_for_the_orientation_of_microphone\\\" @priority",
									"id" : "obj-34",
									"fontsize" : 9.0,
									"patching_rect" : [ 176.0, 266.0, 720.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script new message_ele newex 750 180 300 196617 jcom.message",
									"id" : "obj-35",
									"fontsize" : 9.0,
									"patching_rect" : [ 177.0, 248.0, 356.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-39",
									"fontsize" : 9.0,
									"patching_rect" : [ 496.0, 77.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append",
									"id" : "obj-40",
									"fontsize" : 9.0,
									"patching_rect" : [ 178.0, 143.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append @type msg_int @range/bounds 0 1 @range/clipmode both @repetitions/allow 1 @description \\\"Muting_of_the_microphone\\\" @priority",
									"id" : "obj-41",
									"fontsize" : 9.0,
									"patching_rect" : [ 178.0, 122.0, 629.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script new parameter_aktive newex 750 180 270 196617 jcom.parameter",
									"id" : "obj-42",
									"fontsize" : 9.0,
									"patching_rect" : [ 179.0, 104.0, 389.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script new parameter_aktive newex 750 180 270 196617 jcom.parameter microphones/%ld/mute @type msg_int @range/bounds 0 1 @range/clipmode both @priority %ld @repetitions/allow 1 @description \\\"Muting_of_the_microphone\\\"",
									"linecount" : 2,
									"id" : "obj-46",
									"fontsize" : 9.0,
									"patching_rect" : [ 593.0, 81.0, 706.0, 27.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-47",
									"fontsize" : 9.0,
									"patching_rect" : [ 502.0, -70.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append",
									"id" : "obj-48",
									"fontsize" : 9.0,
									"patching_rect" : [ 180.0, 4.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append @repetitions/allow 0 @dataspace gain @dataspace/unit/native linear @dataspace/unit/active linear @description \\\"Gain_of_of_the_microphone\\\" @priority",
									"id" : "obj-49",
									"fontsize" : 9.0,
									"patching_rect" : [ 180.0, -17.0, 667.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script new parameter_gain newex 700 70 270 196617 jcom.parameter",
									"id" : "obj-50",
									"fontsize" : 9.0,
									"patching_rect" : [ 181.0, -35.0, 326.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script new parameter_gain newex 700 70 270 196617 jcom.parameter.gain microphones/%ld/gain @priority %ld @repetitions/allow 0 @description \\\"Gain_of_of_the_microphone\\\"",
									"linecount" : 2,
									"id" : "obj-54",
									"fontsize" : 9.0,
									"patching_rect" : [ 608.0, -56.0, 742.0, 27.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-55",
									"fontsize" : 9.0,
									"patching_rect" : [ 508.0, -206.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append",
									"id" : "obj-56",
									"fontsize" : 9.0,
									"patching_rect" : [ 181.0, -137.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append @type msg_float @range/bounds 0. 1. @range/clipmode both @repetitions/allow 1 @description \\\"Directivity_value_of_the_microphone\\\" @priority",
									"id" : "obj-57",
									"fontsize" : 9.0,
									"patching_rect" : [ 181.0, -158.0, 628.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script new parameter_directivity newex 990 70 270 196617 jcom.parameter",
									"id" : "obj-58",
									"fontsize" : 9.0,
									"patching_rect" : [ 181.0, -176.0, 404.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script new parameter newex 391 200 270 196617 jcom.parameter microphones/%ld/position/xyz @type msg_list @priority %ld @repetitions/allow 1 @description \\\"Position_in_xyz_coodinate_of_the_microphone\\\"",
									"linecount" : 2,
									"id" : "obj-62",
									"fontsize" : 9.0,
									"patching_rect" : [ 589.0, -498.0, 668.0, 27.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-63",
									"fontsize" : 9.0,
									"patching_rect" : [ 506.0, -361.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append",
									"id" : "obj-64",
									"fontsize" : 9.0,
									"patching_rect" : [ 184.0, -285.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append @type msg_list @repetitions/allow 1 @description \\\"orientation_[yaw_pitch]_of_the_microphone_in_degree\\\" @priority",
									"id" : "obj-65",
									"fontsize" : 9.0,
									"patching_rect" : [ 184.0, -306.0, 557.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script new parameter2 newex 792 544 270 196617 jcom.parameter",
									"id" : "obj-66",
									"fontsize" : 9.0,
									"patching_rect" : [ 184.0, -324.0, 314.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1*10)+2 -10",
									"id" : "obj-70",
									"fontsize" : 9.0,
									"patching_rect" : [ 506.0, -381.0, 108.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-71",
									"fontsize" : 9.0,
									"patching_rect" : [ 184.0, -404.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-72",
									"fontsize" : 9.0,
									"patching_rect" : [ 506.0, -513.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append",
									"id" : "obj-73",
									"fontsize" : 9.0,
									"patching_rect" : [ 184.0, -436.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append @type msg_list @repetitions/allow 1 @description \\\"Position_in_xyz_coodinate_of_the_microphone\\\" @priority",
									"id" : "obj-74",
									"fontsize" : 9.0,
									"patching_rect" : [ 184.0, -457.0, 524.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script new parameter newex 320 530 270 196617 jcom.parameter",
									"id" : "obj-75",
									"fontsize" : 9.0,
									"patching_rect" : [ 183.0, -476.0, 309.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1*10)+1 -10",
									"id" : "obj-79",
									"fontsize" : 9.0,
									"patching_rect" : [ 506.0, -533.0, 108.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"id" : "obj-80",
									"fontsize" : 9.0,
									"patching_rect" : [ 61.0, 664.0, 27.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-81",
									"patching_rect" : [ 61.0, 685.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1*10)+9 -10",
									"id" : "obj-82",
									"fontsize" : 9.0,
									"patching_rect" : [ 516.0, 623.0, 108.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-83",
									"fontsize" : 9.0,
									"patching_rect" : [ 171.0, 599.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script new message_z newex 500 280 300 196617 jcom.message microphones/%ld/position/z @type msg_float @range/bounds -20. 20. @range/clipmode both @priority %ld @repetitions/allow 0 @description \\\"Z_component_for_position_of_microphone\\\"",
									"linecount" : 2,
									"id" : "obj-84",
									"fontsize" : 9.0,
									"patching_rect" : [ 629.0, 648.0, 781.0, 27.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-85",
									"fontsize" : 9.0,
									"patching_rect" : [ 171.0, 455.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script new directivity_preset newex 990 30 270 196617 jcom.message microphones/%ld/directivity/preset @type msg_symbol @priority %ld @description \\\"Directivity_preset_for_the_microphone\\\"",
									"linecount" : 2,
									"id" : "obj-86",
									"fontsize" : 9.0,
									"patching_rect" : [ 630.0, 499.0, 807.0, 27.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1*10)+7 -10",
									"id" : "obj-87",
									"fontsize" : 9.0,
									"patching_rect" : [ 517.0, 339.0, 108.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-88",
									"fontsize" : 9.0,
									"patching_rect" : [ 175.0, 314.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script new message_azi newex 750 280 300 196617 jcom.message microphones/%ld/orientation/yaw @type msg_float @range/bounds -180. 180. @range/clipmode both @priority %ld @repetitions/allow 0 @description \\\"Yaw_angle_for_the_orientation_of_microphone\\\"",
									"linecount" : 2,
									"id" : "obj-89",
									"fontsize" : 9.0,
									"patching_rect" : [ 596.0, 365.0, 785.0, 27.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1*10)+6 -10",
									"id" : "obj-90",
									"fontsize" : 9.0,
									"patching_rect" : [ 501.0, 192.0, 108.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-91",
									"fontsize" : 9.0,
									"patching_rect" : [ 176.0, 166.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script new message_ele newex 750 180 300 196617 jcom.message microphones/%ld/orientation/pitch @type msg_float @range/bounds -90. 90. @range/clipmode both @priority %ld @repetitions/allow 0 @description \\\"Pitch_angle_for_the_orientation_of_microphone\\\"",
									"linecount" : 2,
									"id" : "obj-92",
									"fontsize" : 9.0,
									"patching_rect" : [ 587.0, 225.0, 757.0, 27.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1*10)+5 -10",
									"id" : "obj-93",
									"fontsize" : 9.0,
									"patching_rect" : [ 496.0, 51.0, 108.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-94",
									"fontsize" : 9.0,
									"patching_rect" : [ 178.0, 27.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1*10)+4 -10",
									"id" : "obj-95",
									"fontsize" : 9.0,
									"patching_rect" : [ 502.0, -91.0, 108.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-96",
									"fontsize" : 9.0,
									"patching_rect" : [ 180.0, -113.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1*10)+3 -10",
									"id" : "obj-97",
									"fontsize" : 9.0,
									"patching_rect" : [ 508.0, -232.0, 108.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-98",
									"fontsize" : 9.0,
									"patching_rect" : [ 181.0, -259.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script new parameter_directivity newex 990 70 270 196617 jcom.parameter microphones/%ld/directivity/ratio @type msg_float @range/bounds 0. 1. @range/clipmode both @priority %ld @repetitions/allow 1 @description \"Directivity_value_of_the_microphone \"",
									"linecount" : 2,
									"id" : "obj-99",
									"fontsize" : 9.0,
									"patching_rect" : [ 630.0, -208.0, 709.0, 27.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf microphones/%ld/orientation @type msg_list @priority %ld @repetitions/allow 1 @description \\\"orientation_[yaw_pitch]_of_the_microphone_in_degree\\\"",
									"linecount" : 2,
									"id" : "obj-100",
									"fontsize" : 9.0,
									"patching_rect" : [ 580.0, -357.0, 381.0, 27.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-101",
									"fontsize" : 9.0,
									"patching_rect" : [ 184.0, -556.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i i i i i i i i",
									"id" : "obj-102",
									"fontsize" : 9.0,
									"patching_rect" : [ 1.0, -474.0, 118.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 9,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-103",
									"patching_rect" : [ 1.0, -562.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-104",
									"patching_rect" : [ 2.0, 147.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-119", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-119", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-118", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-118", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-116", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-117", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-117", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-116", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-115", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-114", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-113", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-113", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-112", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-105", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-105", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 0,
									"midpoints" : [ 184.5, 335.0, 526.5, 335.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [ 180.5, 619.0, 525.5, 619.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 180.5, 472.0, 521.5, 472.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [ 190.5, -238.0, 517.5, -238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, -386.0, 515.5, -386.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, -538.0, 515.5, -538.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, -95.0, 511.5, -95.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 0,
									"midpoints" : [ 185.5, 184.0, 510.5, 184.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 0,
									"midpoints" : [ 187.5, 45.0, 505.5, 45.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 515.5, -287.0, 193.5, -287.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 7 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [ 515.5, -439.0, 193.5, -439.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 8 ],
									"destination" : [ "obj-101", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 517.5, -139.0, 190.5, -139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 6 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [ 511.5, 5.0, 189.5, 5.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 5 ],
									"destination" : [ "obj-96", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 505.5, 144.0, 187.5, 144.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 4 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 510.5, 284.0, 185.5, 284.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 3 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 526.5, 432.0, 184.5, 432.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 2 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 525.5, 718.0, 180.5, 718.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 521.5, 573.0, 180.5, 573.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 1 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 1 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-102", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p connecting",
					"id" : "obj-4",
					"fontsize" : 9.0,
					"patching_rect" : [ 201.0, 443.0, 65.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ -1050.0, 45.0, 978.0, 591.0 ],
						"bglocked" : 0,
						"defrect" : [ -1050.0, 45.0, 978.0, 591.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-1",
									"patching_rect" : [ 136.0, 67.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"patching_rect" : [ 136.0, 338.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"patching_rect" : [ 136.0, 43.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script connect list2parameter 10 parameter 0, script connect parameter 0 list2parameter 10, script connect list2parameter2 10 parameter2 0, script connect parameter2 0 list2parameter2 10, script hidden connect dir_mic 0 parameter_directivity 0, script hidden connect parameter_directivity 0 dir_mic 0, script hidden connect gain_mic 0 parameter_gain 0, script connect parameter_gain 0 gain_mic 0, script connect parameter_gain 1 if_store 0, script hidden connect storage 0 parameter_gain 0, script hidden connect zero 0 parameter_gain 0, script hidden connect pvar_aktive 0 parameter_aktive 0, script hidden connect parameter_aktive 0 pvar_aktive 0, script connect parameter_aktive 1 sel_active 0, script connect message_ele 0 route_set_message_ele 0, script connect message_azi 0 route_set_message_azi 0, script connect message_z 0 route_set_message_z 0, script connect pvar_directivity_preset 1 directivity_preset 0, script connect directivity_preset 0 pvar_directivity_preset 0, script connect directivity_preset 1 mic-preset 0, script connect mic-preset 0 parameter_directivity 0",
									"linecount" : 8,
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 136.0, 87.0, 578.0, 87.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "route_set_message_z",
					"text" : "route set",
					"id" : "obj-5",
					"fontsize" : 9.0,
					"patching_rect" : [ 239.0, 524.0, 51.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "route_set_message_azi",
					"text" : "route set",
					"id" : "obj-6",
					"fontsize" : 9.0,
					"patching_rect" : [ 758.0, 173.0, 51.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "route_set_message_ele",
					"text" : "route set",
					"id" : "obj-7",
					"fontsize" : 9.0,
					"patching_rect" : [ 759.0, 197.0, 51.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mic-preset",
					"text" : "p mic-presets",
					"id" : "obj-8",
					"fontsize" : 9.0,
					"patching_rect" : [ 1112.0, 79.0, 73.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 543.0, 275.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 543.0, 275.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
									"text" : "t 1.",
									"id" : "obj-13",
									"fontsize" : 12.0,
									"patching_rect" : [ 144.0, 97.0, 27.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.post \"ViMiC complains\"",
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 453.0, 123.0, 140.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf \\\"%s\\\" is not a valid microphone preset",
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 453.0, 101.0, 191.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0.33",
									"id" : "obj-3",
									"fontsize" : 12.0,
									"patching_rect" : [ 314.0, 97.0, 41.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0.3",
									"id" : "obj-4",
									"fontsize" : 12.0,
									"patching_rect" : [ 371.0, 97.0, 34.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0.7",
									"id" : "obj-5",
									"fontsize" : 12.0,
									"patching_rect" : [ 200.0, 97.0, 34.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0.5",
									"id" : "obj-6",
									"fontsize" : 12.0,
									"patching_rect" : [ 257.0, 97.0, 34.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0.",
									"id" : "obj-7",
									"fontsize" : 12.0,
									"patching_rect" : [ 421.0, 97.0, 27.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route omni subcardioid cardioid supercardioid hypercardioid figure-eight",
									"id" : "obj-9",
									"fontsize" : 9.0,
									"patching_rect" : [ 143.0, 65.0, 352.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 7,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"patching_rect" : [ 143.0, 270.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-11",
									"patching_rect" : [ 143.0, 40.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the definition of super- and hyper-cardioid vary from company to company",
									"linecount" : 2,
									"id" : "obj-12",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 292.0, 215.0, 227.0, 27.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 6 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 5 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 4 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 3 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pvar_directivity_preset",
					"text" : "pvar directivity_menu 2",
					"id" : "obj-9",
					"fontsize" : 9.0,
					"patching_rect" : [ 911.0, 5.0, 121.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0., $1 100",
					"id" : "obj-17",
					"fontsize" : 9.0,
					"patching_rect" : [ 921.0, 115.0, 59.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "storage",
					"text" : "line 0.",
					"id" : "obj-18",
					"fontsize" : 9.0,
					"patching_rect" : [ 921.0, 132.0, 40.0, 17.0 ],
					"numinlets" : 3,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "float 0.",
					"id" : "obj-19",
					"fontsize" : 9.0,
					"patching_rect" : [ 921.0, 95.0, 43.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "if_store",
					"text" : "if $f1 > 0. then $f1",
					"id" : "obj-20",
					"fontsize" : 9.0,
					"patching_rect" : [ 942.0, 58.0, 97.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"id" : "obj-21",
					"fontsize" : 12.0,
					"patching_rect" : [ 1260.0, 225.0, 24.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "zero",
					"text" : "t 0.",
					"id" : "obj-22",
					"fontsize" : 12.0,
					"patching_rect" : [ 1216.0, 225.0, 27.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sel_active",
					"text" : "sel 1 0",
					"id" : "obj-23",
					"fontsize" : 9.0,
					"patching_rect" : [ 1245.0, 187.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"id" : "obj-25",
					"fontsize" : 12.0,
					"patching_rect" : [ 658.0, 85.0, 24.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend defeat",
					"id" : "obj-26",
					"fontsize" : 12.0,
					"patching_rect" : [ 603.0, 106.0, 91.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-27",
					"patching_rect" : [ 601.0, 0.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /freeze /clear",
					"id" : "obj-28",
					"fontsize" : 9.0,
					"patching_rect" : [ 601.0, 60.0, 144.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-29",
					"patching_rect" : [ 553.0, 39.0, 100.0, 12.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 488.0, 5.0, 100.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-30",
					"patching_rect" : [ 553.0, 20.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "||",
					"id" : "obj-35",
					"frgb" : [ 0.776471, 0.0, 0.254902, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 402.0, 0.0, 18.0, 20.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.776471, 0.0, 0.254902, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "gain_mic",
					"lockeddragscroll" : 1,
					"args" : [ 1.0, 0.0, 1.0, "@size", 40, 14, "@rgb2", 66, 0, 2, "@brgb", 100, 100, 100, "@frgb", 181, 181, 181 ],
					"id" : "obj-36",
					"patching_rect" : [ 364.0, 222.0, 36.0, 13.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"name" : "jcom.numberslider.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 447.0, 5.0, 36.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "dir_mic",
					"lockeddragscroll" : 1,
					"args" : [ 0.0, 0.0, 1.0, "@size", 40, 14, "@frgb", 181, 181, 181, "@rgb2", 164, 153, 128, "@brgb", 100, 100, 100 ],
					"id" : "obj-39",
					"patching_rect" : [ 355.0, 148.0, 36.0, 13.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"name" : "jcom.numberslider.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 333.0, 5.0, 36.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "||",
					"id" : "obj-40",
					"frgb" : [ 0.776471, 0.0, 0.254902, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 279.0, 0.0, 18.0, 20.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.776471, 0.0, 0.254902, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"id" : "obj-41",
					"fontsize" : 9.0,
					"patching_rect" : [ 139.0, 332.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "list2parameter2",
					"text" : "jcom.list2parameter 2",
					"id" : "obj-42",
					"fontsize" : 9.0,
					"patching_rect" : [ 636.0, 559.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "E",
					"triscale" : 0.9,
					"id" : "obj-43",
					"fontsize" : 10.0,
					"patching_rect" : [ 685.0, 531.0, 53.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 284.0, 2.0, 39.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"annotation" : "",
					"varname" : "A",
					"triscale" : 0.9,
					"id" : "obj-44",
					"fontsize" : 10.0,
					"patching_rect" : [ 627.0, 531.0, 53.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 246.0, 2.0, 39.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "||",
					"id" : "obj-47",
					"frgb" : [ 0.776471, 0.0, 0.254902, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 202.0, 0.0, 18.0, 20.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.776471, 0.0, 0.254902, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "list2parameter",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-48",
					"fontsize" : 10.0,
					"patching_rect" : [ 62.0, 556.0, 224.0, 19.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess #1",
					"id" : "obj-49",
					"fontsize" : 9.0,
					"patching_rect" : [ 210.0, 289.0, 67.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1 != 0 then $i1",
					"id" : "obj-50",
					"fontsize" : 9.0,
					"patching_rect" : [ 132.0, 360.0, 96.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"id" : "obj-51",
					"fontsize" : 9.0,
					"patching_rect" : [ 132.0, 466.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z",
					"triscale" : 0.9,
					"id" : "obj-52",
					"fontsize" : 10.0,
					"patching_rect" : [ 164.0, 525.0, 53.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 197.0, 2.0, 41.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y",
					"triscale" : 0.9,
					"id" : "obj-53",
					"fontsize" : 10.0,
					"patching_rect" : [ 113.0, 525.0, 53.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 156.0, 2.0, 41.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"annotation" : "",
					"varname" : "X",
					"triscale" : 0.9,
					"id" : "obj-54",
					"fontsize" : 10.0,
					"patching_rect" : [ 62.0, 525.0, 53.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 116.0, 2.0, 41.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-122",
					"patching_rect" : [ 17.0, 17.0, 279.0, 23.0 ],
					"border" : 1,
					"presentation" : 1,
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 594.0, 23.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 10 ],
					"destination" : [ "", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [ 694.5, 552.0, 658.0, 552.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 658.0, 591.0, 620.0, 591.0, 620.0, 520.0, 694.5, 520.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 645.5, 584.0, 623.0, 584.0, 623.0, 527.0, 636.5, 527.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 636.5, 556.0, 645.5, 556.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.5, 588.0, 43.0, 588.0, 43.0, 513.0, 173.5, 513.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-48", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 92.0, 584.0, 48.0, 584.0, 48.0, 518.0, 122.5, 518.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 71.5, 580.0, 53.0, 580.0, 53.0, 524.0, 71.5, 524.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-48", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 210.5, 462.0, 141.5, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
