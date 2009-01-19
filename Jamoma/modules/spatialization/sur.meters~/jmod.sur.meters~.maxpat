{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 111.0, 76.0, 710.0, 678.0 ],
		"bglocked" : 0,
		"defrect" : [ 111.0, 76.0, 710.0, 678.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 501.0, 63.0, 21.0, 21.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 120.0, 265.0, 137.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multiin",
					"text" : "jcom.multi.out~",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 32,
					"patching_rect" : [ 551.0, 109.0, 437.5, 19.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"meterbridge for mutlichannel signals\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 30.0, 300.0, 251.0, 31.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-20",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 225.0, 21.0, 21.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 360.0, 21.0, 21.0 ],
					"id" : "obj-22",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter channels @repetitions/allow 0 @type msg_int @range/bounds 0 32 @range/clipmode both @priority 1 @description \"Number of channels to display.\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 364.0, 16.0, 606.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-23",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 85.0, 240.0, 199.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message clear @type msg_none @description \"clears meters\"",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 439.0, 281.0, 351.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-3",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter17",
					"numinlets" : 1,
					"presentation_rect" : [ 159.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 787.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-89"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter18",
					"numinlets" : 1,
					"presentation_rect" : [ 168.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 802.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-88"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter19",
					"numinlets" : 1,
					"presentation_rect" : [ 177.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 815.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-87"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter20",
					"numinlets" : 1,
					"presentation_rect" : [ 186.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 828.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-86"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter21",
					"numinlets" : 1,
					"presentation_rect" : [ 195.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 842.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-85"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter22",
					"numinlets" : 1,
					"presentation_rect" : [ 204.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 857.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-84"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter23",
					"numinlets" : 1,
					"presentation_rect" : [ 213.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 870.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-83"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter24",
					"numinlets" : 1,
					"presentation_rect" : [ 222.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 883.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-82"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter25",
					"numinlets" : 1,
					"presentation_rect" : [ 231.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 897.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-81"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter26",
					"numinlets" : 1,
					"presentation_rect" : [ 240.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 912.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-80"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "clear meters",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 244.0, 1.0, 38.0, 18.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 440.0, 260.0, 56.0, 16.0 ],
					"outlettype" : [ "", "", "int" ],
					"presentation" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"text" : "Clear"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter27",
					"numinlets" : 1,
					"presentation_rect" : [ 249.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 925.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-79"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter28",
					"numinlets" : 1,
					"presentation_rect" : [ 258.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 938.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-78"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter29",
					"numinlets" : 1,
					"presentation_rect" : [ 267.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 952.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-77"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter30",
					"numinlets" : 1,
					"presentation_rect" : [ 276.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 967.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-76"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter31",
					"numinlets" : 1,
					"presentation_rect" : [ 285.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 980.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-75"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter0",
					"numinlets" : 1,
					"presentation_rect" : [ 6.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 553.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-74"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter9",
					"numinlets" : 1,
					"presentation_rect" : [ 87.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 677.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-73"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter10",
					"numinlets" : 1,
					"presentation_rect" : [ 96.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 692.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-72"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter11",
					"numinlets" : 1,
					"presentation_rect" : [ 105.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 705.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-71"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter12",
					"numinlets" : 1,
					"presentation_rect" : [ 114.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 718.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-70"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter1",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 567.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter13",
					"numinlets" : 1,
					"presentation_rect" : [ 123.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 732.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-69"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter14",
					"numinlets" : 1,
					"presentation_rect" : [ 132.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 747.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter15",
					"numinlets" : 1,
					"presentation_rect" : [ 141.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 760.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-67"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter16",
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 773.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter5",
					"numinlets" : 1,
					"presentation_rect" : [ 51.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 622.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-65"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter6",
					"numinlets" : 1,
					"presentation_rect" : [ 60.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 637.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-64"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter7",
					"numinlets" : 1,
					"presentation_rect" : [ 69.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 650.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter8",
					"numinlets" : 1,
					"presentation_rect" : [ 78.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 663.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter4",
					"numinlets" : 1,
					"presentation_rect" : [ 42.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 608.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-61"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter3",
					"numinlets" : 1,
					"presentation_rect" : [ 33.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 595.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"varname" : "meter2",
					"numinlets" : 1,
					"presentation_rect" : [ 24.0, 28.0, 8.0, 90.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 582.0, 133.0, 8.0, 90.0 ],
					"presentation" : 1,
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 282.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 282.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-41",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 263.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 263.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-40",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 440.0, 315.0, 48.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-45",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 266.0, 118.0, 29.0, 16.0 ],
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 266.0, 95.0, 29.0, 42.0 ],
					"presentation" : 1,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 209.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 209.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-38",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 192.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 192.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-37",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "6",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 226.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 226.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-36",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "8",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 245.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 245.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-35",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 173.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 173.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-34",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 84.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 84.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-33",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 120.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 120.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-32",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 103.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 103.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-31",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "6",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 137.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 137.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-30",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "8",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 156.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 156.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-29",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "8",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 66.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 66.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-28",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "6",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 47.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 47.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-27",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 13.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 13.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-26",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 440.0, 390.0, 55.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-46",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 30.0, 115.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 30.0, 115.0, 17.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 440.0, 365.0, 67.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 5.0, 118.0, 82.0, 16.0 ],
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 5.0, 95.0, 82.0, 42.0 ],
					"presentation" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 221.0, 0.0, 21.0, 19.0 ],
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 326.0, 23.0, 21.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 501.0, 104.0, 21.0, 21.0 ],
					"id" : "obj-6",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 176.0, 118.0, 91.0, 16.0 ],
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 176.0, 95.0, 91.0, 42.0 ],
					"presentation" : 1,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 440.0, 340.0, 100.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-92",
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 230.0, 318.0, 300.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 230.0, 318.0, 300.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p clear",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 195.0, 130.0, 44.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 520.0, 210.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 520.0, 210.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 32 0",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 3,
													"patching_rect" : [ 25.0, 100.0, 51.0, 19.0 ],
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-1",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script send meter%ld bang",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 130.0, 183.0, 19.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 60.0, 160.0, 25.0, 25.0 ],
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 25.0, 35.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 25.0, 71.0, 24.0, 19.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-8",
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p check _4_dsp",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 96.0, 96.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-49",
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 510.0, 265.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 510.0, 265.0, 600.0, 426.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "int",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 160.0, 165.0, 34.0, 19.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-10",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 160.0, 30.0, 22.0, 22.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 200",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 95.0, 240.0, 57.0, 19.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 95.0, 290.0, 25.0, 25.0 ],
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 95.0, 195.0, 36.0, 19.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 45.0, 58.0, 19.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-5",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 95.0, 115.0, 42.0, 19.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-6",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 115.0, 38.0, 19.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-7",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 4,
													"patching_rect" : [ 50.0, 70.0, 67.0, 19.0 ],
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-8",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 160.0, 105.0, 49.0, 19.0 ],
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-9",
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 101.0, 104.5, 101.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /channels /freeze /clear",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 55.0, 65.0, 205.0, 19.0 ],
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-50",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p scripting",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 135.0, 108.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-55",
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 752.0, 486.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 752.0, 486.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 183.0, 65.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p connect",
													"fontsize" : 10.0,
													"numinlets" : 3,
													"numoutlets" : 1,
													"patching_rect" : [ 144.0, 207.0, 59.0, 19.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"patcher" : 													{
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
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 282.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-10",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf script connect multiin %ld meter%ld 0",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 55.0, 227.0, 241.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-11",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 55.0, 306.0, 25.0, 25.0 ],
																	"id" : "obj-12",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi 32 0",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"patching_rect" : [ 245.0, 100.0, 51.0, 19.0 ],
																	"outlettype" : [ "bang", "bang", "int" ],
																	"id" : "obj-3",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i 0",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 455.0, 157.0, 32.5, 19.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-6",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 469.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-7",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf script connect multiin %ld meter%ld 0\\, script send meter%ld defeat %ld",
																	"fontsize" : 10.0,
																	"numinlets" : 4,
																	"numoutlets" : 1,
																	"patching_rect" : [ 127.0, 283.0, 419.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 250.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-9",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 2 ],
																	"destination" : [ "obj-11", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 2 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 357.0, 58.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "freeze message",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
													"patching_rect" : [ 395.0, 60.0, 150.0, 19.0 ],
													"id" : "obj-16",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p defeat",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 326.0, 208.0, 52.0, 19.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"patcher" : 													{
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 237.0, 83.0, 25.0, 25.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf script send meter%ld defeat %ld",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 142.0, 270.0, 213.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-11",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 142.0, 82.0, 25.0, 25.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-2",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 77.0, 372.0, 25.0, 25.0 ],
																	"id" : "obj-3",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi 32 0",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"patching_rect" : [ 160.0, 174.0, 51.0, 19.0 ],
																	"outlettype" : [ "bang", "bang", "int" ],
																	"id" : "obj-4",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 236.0, 117.0, 32.5, 19.0 ],
																	"outlettype" : [ "bang", "int" ],
																	"id" : "obj-5",
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 1 ],
																	"destination" : [ "obj-11", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 196.0, 431.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i i b i",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 5,
													"patching_rect" : [ 183.0, 99.0, 73.0, 19.0 ],
													"outlettype" : [ "bang", "int", "int", "bang", "int" ],
													"id" : "obj-4",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p disconnect",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 224.0, 207.0, 73.0, 19.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 671.0, 61.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 671.0, 61.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf script send meter%ld 0.",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 80.0, 268.0, 168.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i 8",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 100.0, 32.5, 19.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-14",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "if $i1 > 0 then $i1",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 51.0, 121.0, 102.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-16",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf script disconnect multiin %ld meter%ld 0",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 104.0, 238.0, 255.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-22",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi 32 0",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"patching_rect" : [ 63.0, 181.0, 51.0, 19.0 ],
																	"outlettype" : [ "bang", "bang", "int" ],
																	"id" : "obj-23",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 51.0, 143.0, 32.5, 19.0 ],
																	"outlettype" : [ "bang", "int" ],
																	"id" : "obj-24",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-5",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 94.0, 41.0, 25.0, 25.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-6",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 105.0, 317.0, 25.0, 25.0 ],
																	"id" : "obj-7",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 2 ],
																	"destination" : [ "obj-22", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 2 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 1 ],
																	"destination" : [ "obj-23", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0
													}

												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 4 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 3 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 30.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-90",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 221.0, 25.0, 25.0 ],
									"id" : "obj-91",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 2 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 86.0, 118.0, 91.0, 16.0 ],
					"numoutlets" : 0,
					"border" : 1,
					"patching_rect" : [ 86.0, 95.0, 91.0, 42.0 ],
					"presentation" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Channels:",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 162.0, 0.0, 59.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 179.0, 0.0, 59.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"has_freeze" : 1,
					"presentation" : 1,
					"id" : "obj-24"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 289.0, 39.5, 289.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 267.0, 39.5, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
