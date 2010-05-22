{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 21.0, 86.0, 642.0, 199.0 ],
		"bglocked" : 0,
		"defrect" : [ 21.0, 86.0, 642.0, 199.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 15.0, 119.333344, 589.0, 31.0 ],
					"text" : "jcom.messageArray raw/voice.[16]/program @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 15.0, 98.0, 591.0, 19.0 ],
					"text" : "jcom.messageArray raw/voice.[16]/poly @type array @description \"Send MID Aftertouch message to VST plug-in.\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 17.0, 61.0, 586.0, 31.0 ],
					"text" : "jcom.messageArray raw/voice.[16]/bend @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Pitch Bend message to VST plug-in.\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 17.0, 40.333344, 586.0, 19.0 ],
					"text" : "jcom.messageArray raw/voice.[16]/note @type array @description \"Send MIDI Note On message to VST plug-in.\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 15.0, 231.0, 19.0 ],
					"text" : "Utility for receiving MIDI Channel massages"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ -1359.0, -37.0, 1059.0, 837.0 ],
						"bglocked" : 0,
						"defrect" : [ -1359.0, -37.0, 1059.0, 837.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1404.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.127 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][64]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1382.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.126 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][65]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1360.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.125 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][66]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1338.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.124 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][67]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1316.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.123 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][68]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1294.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.122 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][69]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1272.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.121 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][70]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1250.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.120 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][71]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1227.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.119 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][72]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1205.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.118 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][73]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1183.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.117 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][74]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1161.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.116 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][75]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1139.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.115 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][76]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1117.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.114 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][77]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1095.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.113 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][78]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1073.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.112 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][79]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1050.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.111 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][80]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1028.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.110 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][81]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 1006.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.109 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][82]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 984.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.108 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][83]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 962.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.107 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][84]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 940.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.106 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][85]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 918.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.105 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][86]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 896.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.104 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][87]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 873.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.103 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][88]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 851.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.102 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][89]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-91",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 829.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.101 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][90]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 807.0, 877.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.100 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][91]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 785.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.99 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][92]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 763.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.98 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][93]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 741.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.97 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][94]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 922.0, 719.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.96 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][95]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 697.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.95 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][96]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-98",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 675.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.94 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][97]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 653.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.93 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][98]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-100",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 631.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.92 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][99]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 609.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.91 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][100]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-102",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 587.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.90 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][101]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 565.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.89 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][102]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 543.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.88 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][103]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 520.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.87 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][104]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-106",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 498.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.86 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][105]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 476.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.85 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][106]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-108",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 454.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.84 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][107]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 432.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.83 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][108]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 410.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.82 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][109]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 388.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.81 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][110]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 366.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.80 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][111]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 343.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.79 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][112]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 321.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.78 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][113]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-115",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 299.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.77 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][114]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 277.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.76 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][115]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-117",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 255.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.75 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][116]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-118",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 233.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.74 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][117]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 211.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.73 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][118]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-120",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 189.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.72 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][119]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-121",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 166.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.71 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][120]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-122",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 144.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.70 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][121]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-123",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 122.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.69 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][122]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 100.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.68 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][123]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-125",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 78.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.67 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][124]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-126",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 56.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.66 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][125]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 34.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.65 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][126]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 924.0, 12.0, 870.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.64 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][127]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1403.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.63 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][32]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1381.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.62 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][33]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1359.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.61 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][34]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1337.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.60 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][35]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1315.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.59 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][36]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1293.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.58 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][37]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1271.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.57 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][38]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1249.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.56 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][39]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1226.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.55 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][40]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1204.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.54 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][41]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1182.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.53 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][42]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1160.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.52 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][43]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1138.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.51 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][44]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1116.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.50 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][45]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1094.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.49 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][46]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1072.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.48 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][47]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1049.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.47 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][48]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1027.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.46 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][49]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 1005.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.45 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][50]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 983.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.44 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][51]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 961.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.43 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][52]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 939.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.42 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][53]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 917.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.41 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][54]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 895.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.40 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][55]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 872.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.39 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][56]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 850.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.38 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][57]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 828.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.37 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][58]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 806.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.36 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][59]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 784.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.35 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][60]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 762.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.34 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][61]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 740.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.33 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][62]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 718.0, 884.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.32 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][63]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 696.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.31 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][16]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 674.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.30 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][17]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 652.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.29 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][18]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 630.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.28 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][19]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 608.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.27 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][20]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 586.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.26 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][21]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 564.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.25 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][22]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 542.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.24 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][23]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 519.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.23 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][24]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 497.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.22 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][25]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 475.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.21 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][26]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 453.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.20 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][27]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 431.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.19 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][28]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 409.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.18 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][29]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 387.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.17 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][30]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 365.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.16 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][31]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 342.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.15 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][8]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 320.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.14 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][9]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 298.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.13 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][10]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 276.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.12 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][11]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 254.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.11 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][12]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 232.0, 882.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.10 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][13]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 210.0, 876.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.9 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][14]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 188.0, 876.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.8 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][15]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 165.0, 876.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.7 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][4]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 143.0, 876.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.6 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][5]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 121.0, 876.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.5 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][6]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 99.0, 876.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.4 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][7]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 77.0, 876.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.3 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 55.0, 876.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.2 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][3]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 33.0, 876.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.1 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][1]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 29.0, 11.0, 876.0, 19.0 ],
									"text" : "jcom.messageArray raw/voice.[16]/cc.0 @type integer @range/bounds 0 127 @range/clipmode both @description \"Send MIDI Control Change message to VST plug-in.\"",
									"varname" : "cc[1][0]"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 15.0, 156.0, 31.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}
,
					"text" : "p cc"
				}

			}
 ],
		"lines" : [  ]
	}

}
