{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 105.0, 88.0, 1159.0, 723.0 ],
		"bglocked" : 0,
		"defrect" : [ 105.0, 88.0, 1159.0, 723.0 ],
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
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.input~ @description \"A generic module for audio input\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 9.0, 204.0, 196.0, 31.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.remote __meter__2",
					"patching_rect" : [ 310.0, 30.0, 140.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.remote __meter__1",
					"patching_rect" : [ 310.0, 5.0, 140.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 42.0, 44.0, 123.0, 12.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 42.0, 28.0, 123.0, 12.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "Loop_toggle",
					"patching_rect" : [ 214.0, 65.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-87",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Play_button",
					"patching_rect" : [ 245.0, 20.0, 50.0, 18.0 ],
					"outlettype" : [ "int", "", "int" ],
					"id" : "obj-84",
					"mode" : 1,
					"fontname" : "Verdana",
					"rounded" : 15.0,
					"texton" : "Play",
					"text" : "Play",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button",
					"patching_rect" : [ 193.0, 20.0, 50.0, 18.0 ],
					"outlettype" : [ "int", "", "int" ],
					"id" : "obj-83",
					"fontname" : "Verdana",
					"rounded" : 15.0,
					"texton" : "DSP",
					"text" : "Open",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"hidden" : 1,
					"patching_rect" : [ 57.0, 158.0, 196.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 0",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 363.0, 50.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain[3]",
					"text" : "route set",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 342.0, 54.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain",
					"text" : "jcom.parameter.gain audio/gain @description \"master gain\"",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 321.0, 335.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0.",
					"hidden" : 1,
					"patching_rect" : [ 288.0, 162.0, 201.0, 19.0 ],
					"outlettype" : [ "float", "float" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 157.",
					"hidden" : 1,
					"patching_rect" : [ 475.0, 256.0, 41.0, 19.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 157.",
					"hidden" : 1,
					"patching_rect" : [ 288.0, 256.0, 41.0, 19.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set bottom",
					"hidden" : 1,
					"patching_rect" : [ 475.0, 276.0, 108.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"hidden" : 1,
					"patching_rect" : [ 288.0, 236.0, 54.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"jsarguments" : [  ],
					"patching_rect" : [ 30.0, 75.0, 161.0, 26.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"filename" : "tap.twinsliderui.js",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 161.0, 26.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set top",
					"hidden" : 1,
					"patching_rect" : [ 288.0, 276.0, 88.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"hidden" : 1,
					"patching_rect" : [ 475.0, 236.0, 54.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "link $1",
					"hidden" : 1,
					"patching_rect" : [ 5.0, 122.0, 42.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain[2]",
					"text" : "jcom.parameter.gain gain_2 @description \"right channel gain\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 475.0, 204.0, 177.0, 31.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain[1]",
					"text" : "jcom.parameter.gain gain_1 @description \"left channel gain\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 288.0, 204.0, 175.0, 31.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"hidden" : 1,
					"patching_rect" : [ 45.0, 404.0, 73.0, 19.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"hidden" : 1,
					"patching_rect" : [ 45.0, 295.0, 59.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"hidden" : 1,
					"patching_rect" : [ 67.0, 177.0, 137.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"patching_rect" : [ 45.0, 347.0, 49.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"hidden" : 1,
					"patching_rect" : [ 45.0, 321.0, 87.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dsp_status @type msg_none @description \"Open DSP Status window.\"",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 568.0, 442.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar filename_menu",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 650.0, 112.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "filename_menu",
					"types" : [  ],
					"patching_rect" : [ 200.0, 87.0, 94.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"rounded" : 15,
					"menumode" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"items" : "PulzKick&Hat.aif",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_filename",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 627.0, 104.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "Link",
					"patching_rect" : [ 5.0, 71.0, 14.0, 13.0 ],
					"outlettype" : [ "int" ],
					"trackhorizontal" : 1,
					"id" : "obj-29",
					"mode" : 1,
					"name" : "jcom.button.link_toggle.pct",
					"snap" : 1,
					"tracking" : 1,
					"numinlets" : 1,
					"multiplier" : 1,
					"trackvertical" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend link",
					"hidden" : 1,
					"patching_rect" : [ 345.0, 134.0, 71.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Link",
					"hidden" : 1,
					"patching_rect" : [ 345.0, 67.0, 55.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "link",
					"text" : "jcom.parameter link @type msg_toggle @description \"Link gain levels for left and right channels.\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 345.0, 87.0, 280.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_done",
					"hidden" : 1,
					"patching_rect" : [ 727.0, 229.0, 86.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 157.",
					"hidden" : 1,
					"patching_rect" : [ 288.0, 183.0, 41.0, 19.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"varname" : "gain_master",
					"inactiveimage" : 0,
					"patching_rect" : [ 20.0, 100.0, 161.0, 13.0 ],
					"outlettype" : [ "int", "int" ],
					"id" : "obj-35",
					"imagemask" : 1,
					"rightvalue" : 157,
					"bkgndpict" : "jcom.slider.master.bg.pct",
					"jump" : 0,
					"bkgndsize" : 1,
					"rightmargin" : 2,
					"numinlets" : 2,
					"leftmargin" : 2,
					"movevertical" : 0,
					"numoutlets" : 2,
					"knobpict" : "jcom.slider.master.knob.top.pct"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 157.",
					"hidden" : 1,
					"patching_rect" : [ 475.0, 183.0, 41.0, 19.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP and adc~ settings",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 391.0, 185.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DSP_Status",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 546.0, 93.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Channel_Right",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 514.0, 107.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Channel_Left",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 452.0, 100.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_2",
					"text" : "jcom.parameter ch_2 @type msg_int @description \"Set logical input for right channel.\"",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 483.0, 449.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_1",
					"text" : "jcom.parameter ch_1 @type msg_int @description \"Set logical input for left channel.\"",
					"hidden" : 1,
					"patching_rect" : [ 286.0, 420.0, 441.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Right",
					"maximum" : 512,
					"patching_rect" : [ 2.0, 43.0, 30.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-46",
					"fontname" : "Verdana",
					"triangle" : 0,
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"minimum" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Left",
					"maximum" : 512,
					"patching_rect" : [ 2.0, 26.0, 30.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-47",
					"fontname" : "Verdana",
					"triangle" : 0,
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"minimum" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"hidden" : 1,
					"patching_rect" : [ 195.0, 177.0, 38.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Volume control",
					"hidden" : 1,
					"patching_rect" : [ 345.0, 15.0, 185.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-50",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop",
					"hidden" : 1,
					"patching_rect" : [ 667.0, 343.0, 37.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "play",
					"hidden" : 1,
					"patching_rect" : [ 667.0, 258.0, 35.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-52",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open",
					"hidden" : 1,
					"patching_rect" : [ 667.0, 134.0, 39.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-53",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "source",
					"hidden" : 1,
					"patching_rect" : [ 667.0, 65.0, 51.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Time_Display",
					"hidden" : 1,
					"patching_rect" : [ 139.0, 404.0, 102.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-55",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Sound_sources",
					"hidden" : 1,
					"patching_rect" : [ 45.0, 376.0, 107.0, 19.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 315.0, 68.0, 940.0, 764.0 ],
						"bglocked" : 0,
						"defrect" : [ 315.0, 68.0, 940.0, 764.0 ],
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
									"text" : "prepend symbol",
									"patching_rect" : [ 95.0, 90.0, 89.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "input_menu",
									"types" : [  ],
									"patching_rect" : [ 95.0, 115.0, 100.0, 19.0 ],
									"outlettype" : [ "int", "", "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"items" : [ "none", ",", "live", ",", "soundfile", ",", "1KHz", ",", "pink" ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 4",
									"patching_rect" : [ 544.0, 164.0, 30.0, 19.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 3",
									"patching_rect" : [ 453.0, 164.0, 30.0, 19.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 2",
									"patching_rect" : [ 362.0, 164.0, 30.0, 19.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 1",
									"patching_rect" : [ 271.0, 164.0, 30.0, 19.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"patching_rect" : [ 362.0, 191.0, 43.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"patching_rect" : [ 271.0, 191.0, 43.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"patching_rect" : [ 453.0, 191.0, 43.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"patching_rect" : [ 544.0, 191.0, 43.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /source_select",
									"patching_rect" : [ 95.0, 65.0, 156.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p smooth_in_out",
									"patching_rect" : [ 20.0, 512.0, 165.0, 19.0 ],
									"outlettype" : [ "signal", "signal" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 185.0, 98.0, 623.0, 428.0 ],
										"bglocked" : 0,
										"defrect" : [ 185.0, 98.0, 623.0, 428.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 10",
													"patching_rect" : [ 475.0, 163.0, 31.0, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"patching_rect" : [ 410.0, 140.0, 32.0, 18.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"patching_rect" : [ 319.0, 270.0, 27.0, 18.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"patching_rect" : [ 284.0, 270.0, 27.0, 18.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0, 1 10",
													"patching_rect" : [ 410.0, 163.0, 44.0, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line~",
													"patching_rect" : [ 410.0, 189.0, 34.0, 18.0 ],
													"outlettype" : [ "signal", "bang" ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"patching_rect" : [ 410.0, 112.0, 59.0, 18.0 ],
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "NOTE: This fade is not displayed in the GUI.",
													"patching_rect" : [ 94.0, 334.0, 228.0, 18.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade in when audio start",
													"patching_rect" : [ 24.0, 75.0, 161.0, 18.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 319.0, 91.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 284.0, 91.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-11",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 319.0, 305.0, 15.0, 15.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 284.0, 305.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.audio.off",
													"patching_rect" : [ 475.0, 112.0, 87.0, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade out when audio stop",
													"patching_rect" : [ 24.0, 59.0, 166.0, 18.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "line~ is able to handle this. gain~ and matrix~ is not.",
													"patching_rect" : [ 24.0, 95.0, 277.0, 18.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 1 ],
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
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 20.0, 22.0, 20.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "By using opendialog it's made sure that any opendialog message that's reaching sfplay~ also has a filename argument.",
									"linecount" : 2,
									"patching_rect" : [ 400.0, 612.0, 329.0, 31.0 ],
									"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "That way we know for sure that any \"open\" message reaching sfplay~ for sure implies that a new file is to be opened imideately, and hence the Play button can be turned of instantly.",
									"linecount" : 3,
									"patching_rect" : [ 400.0, 640.0, 391.0, 43.0 ],
									"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The \"Play\" GUI button should be turned of when a new file is opened.",
									"patching_rect" : [ 400.0, 593.0, 359.0, 19.0 ],
									"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Time marker",
									"patching_rect" : [ 421.0, 555.0, 89.0, 19.0 ],
									"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "signal R",
									"patching_rect" : [ 191.0, 555.0, 56.0, 19.0 ],
									"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "signal L",
									"patching_rect" : [ 39.0, 555.0, 58.0, 19.0 ],
									"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 20.0, 555.0, 20.0, 20.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "signal L"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 171.0, 555.0, 20.0, 20.0 ],
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "signal R"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 404.0, 555.0, 20.0, 20.0 ],
									"id" : "obj-22",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "Time marker"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p gain",
									"patching_rect" : [ 20.0, 475.0, 168.0, 19.0 ],
									"outlettype" : [ "signal", "signal" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 642.0, 166.0, 529.0, 535.0 ],
										"bglocked" : 0,
										"defrect" : [ 642.0, 166.0, 529.0, 535.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 61.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route /gain_1/midi /gain_2/midi /audio/gain/midi",
													"patching_rect" : [ 50.0, 106.0, 255.0, 18.0 ],
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 158. 0. 7.94321 1.071519",
													"linecount" : 3,
													"patching_rect" : [ 50.0, 173.0, 76.0, 42.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 6,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 158. 0. 7.94321 1.071519",
													"linecount" : 3,
													"patching_rect" : [ 127.0, 173.0, 76.0, 42.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 6,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 158. 0. 7.94321 1.071519",
													"linecount" : 3,
													"patching_rect" : [ 204.0, 173.0, 76.0, 42.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 6,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.",
													"patching_rect" : [ 125.0, 306.0, 44.0, 18.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.",
													"patching_rect" : [ 50.0, 306.0, 44.0, 18.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"patching_rect" : [ 20.0, 253.0, 22.0, 18.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "MIDI to amplitude",
													"linecount" : 2,
													"patching_rect" : [ 281.0, 173.0, 58.0, 30.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal R",
													"patching_rect" : [ 420.0, 450.0, 54.0, 18.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal L",
													"patching_rect" : [ 315.0, 450.0, 54.0, 18.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal R",
													"patching_rect" : [ 418.0, 39.0, 54.0, 18.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 397.0, 438.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : "signal R"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 365.0, 438.0, 15.0, 15.0 ],
													"id" : "obj-14",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : "signal L"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 430.0, 61.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-15",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : "signal R"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 365.0, 61.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-16",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : "signal L"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "matrix~ 2 2 0.",
													"patching_rect" : [ 365.0, 388.0, 82.0, 18.0 ],
													"outlettype" : [ "signal", "signal", "list" ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 0 $1",
													"patching_rect" : [ 50.0, 329.0, 41.0, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1 1 $1",
													"patching_rect" : [ 125.0, 329.0, 41.0, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal L",
													"patching_rect" : [ 346.0, 39.0, 54.0, 18.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-20",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 134.5, 354.0, 374.5, 354.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 354.0, 374.5, 354.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "----signal outputs----",
									"patching_rect" : [ 43.0, 587.0, 115.0, 19.0 ],
									"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 4",
									"patching_rect" : [ 170.0, 430.0, 70.0, 19.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 5,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 4",
									"patching_rect" : [ 95.0, 430.0, 70.0, 19.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 5,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p sfplay~",
									"patching_rect" : [ 362.0, 268.0, 56.0, 19.0 ],
									"outlettype" : [ "signal", "signal", "" ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 118.0, 354.0, 731.0, 411.0 ],
										"bglocked" : 0,
										"defrect" : [ 118.0, 354.0, 731.0, 411.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"patching_rect" : [ 429.0, 299.0, 30.0, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 2",
													"patching_rect" : [ 429.0, 124.0, 34.0, 18.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 429.0, 30.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-3",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return sf_report @description \"Report when sound file reach end point and loop to start point.\"",
													"linecount" : 2,
													"patching_rect" : [ 429.0, 322.0, 260.0, 30.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p h:m:s:ms",
													"patching_rect" : [ 266.0, 239.0, 67.0, 18.0 ],
													"outlettype" : [ "", "loop_flag" ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 592.0, 57.0, 701.0, 519.0 ],
														"bglocked" : 0,
														"defrect" : [ 592.0, 57.0, 701.0, 519.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t loop_flag",
																	"patching_rect" : [ 371.0, 243.0, 61.0, 18.0 ],
																	"outlettype" : [ "loop_flag" ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 371.0, 447.0, 15.0, 15.0 ],
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "edge~",
																	"patching_rect" : [ 371.0, 183.0, 41.0, 18.0 ],
																	"outlettype" : [ "bang", "bang" ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "change~",
																	"patching_rect" : [ 371.0, 158.0, 52.0, 18.0 ],
																	"outlettype" : [ "signal" ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "change~",
																	"patching_rect" : [ 371.0, 136.0, 52.0, 18.0 ],
																	"outlettype" : [ "signal" ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 0 9",
																	"patching_rect" : [ 30.0, 320.0, 49.0, 18.0 ],
																	"outlettype" : [ "int", "int" ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 3,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf O%i",
																	"patching_rect" : [ 30.0, 342.0, 65.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"patching_rect" : [ 30.0, 366.0, 54.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf O%i",
																	"patching_rect" : [ 137.0, 342.0, 65.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"patching_rect" : [ 137.0, 366.0, 54.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 0 9",
																	"patching_rect" : [ 137.0, 320.0, 49.0, 18.0 ],
																	"outlettype" : [ "int", "int" ],
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 3,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf O%i",
																	"patching_rect" : [ 244.0, 342.0, 65.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"patching_rect" : [ 244.0, 372.0, 54.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 0 9",
																	"patching_rect" : [ 244.0, 320.0, 49.0, 18.0 ],
																	"outlettype" : [ "int", "int" ],
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 3,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 30.0, 447.0, 15.0, 15.0 ],
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %s:%s:%s",
																	"patching_rect" : [ 30.0, 398.0, 225.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 3,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend setitem 0",
																	"patching_rect" : [ 30.0, 422.0, 99.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-17",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr $f1-$i2",
																	"patching_rect" : [ 164.0, 162.0, 70.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 2,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 60.",
																	"patching_rect" : [ 244.0, 186.0, 34.0, 18.0 ],
																	"outlettype" : [ "float" ],
																	"id" : "obj-19",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 2,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr $f1-$i2",
																	"patching_rect" : [ 46.0, 114.0, 70.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-20",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 2,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "s",
																	"patching_rect" : [ 256.0, 260.0, 39.0, 49.0 ],
																	"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"fontsize" : 34.668163,
																	"numinlets" : 1,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 60.",
																	"patching_rect" : [ 137.0, 139.0, 34.0, 18.0 ],
																	"outlettype" : [ "float" ],
																	"id" : "obj-22",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 2,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "m",
																	"patching_rect" : [ 146.0, 260.0, 42.0, 49.0 ],
																	"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
																	"id" : "obj-23",
																	"fontname" : "Verdana",
																	"fontsize" : 34.668163,
																	"numinlets" : 1,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "/ 3600000.",
																	"patching_rect" : [ 30.0, 91.0, 64.0, 18.0 ],
																	"outlettype" : [ "float" ],
																	"id" : "obj-24",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 2,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "snapshot~ 1000",
																	"patching_rect" : [ 30.0, 71.0, 90.0, 18.0 ],
																	"outlettype" : [ "float" ],
																	"id" : "obj-25",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 2,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 30.0, 27.0, 15.0, 15.0 ],
																	"outlettype" : [ "signal" ],
																	"id" : "obj-26",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "h",
																	"patching_rect" : [ 38.0, 260.0, 39.0, 49.0 ],
																	"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
																	"id" : "obj-27",
																	"fontname" : "Verdana",
																	"fontsize" : 34.668163,
																	"numinlets" : 1,
																	"numoutlets" : 0
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
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
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 39.0, 51.0, 380.5, 51.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-16", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 1 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 173.5, 183.0, 253.5, 183.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 146.5, 158.0, 224.5, 158.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 146.5, 158.0, 173.5, 158.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-16", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 55.5, 135.0, 146.5, 135.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 39.5, 110.0, 106.5, 110.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 39.5, 111.0, 55.5, 111.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "loop $1",
													"patching_rect" : [ 284.0, 89.0, 45.0, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /sf_open /play /direct /loop",
													"patching_rect" : [ 50.0, 50.0, 323.0, 18.0 ],
													"outlettype" : [ "", "", "", "", "" ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "modout 1",
													"patching_rect" : [ 140.0, 139.0, 56.0, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"patching_rect" : [ 140.0, 119.0, 52.0, 18.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p open_stuff",
													"patching_rect" : [ 50.0, 78.0, 71.0, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 191.0, 93.0, 428.0, 490.0 ],
														"bglocked" : 0,
														"defrect" : [ 191.0, 93.0, 428.0, 490.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r jcom.init",
																	"patching_rect" : [ 237.0, 243.0, 59.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t clear",
																	"patching_rect" : [ 237.0, 292.0, 40.0, 18.0 ],
																	"outlettype" : [ "clear" ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_xxx_filename",
																	"patching_rect" : [ 159.0, 317.0, 104.0, 18.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend append",
																	"patching_rect" : [ 159.0, 291.0, 89.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "strippath",
																	"patching_rect" : [ 159.0, 245.0, 53.0, 18.0 ],
																	"outlettype" : [ "", "int" ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 65.0, 280.0, 15.0, 15.0 ],
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 65.0, 144.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-7",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend open",
																	"patching_rect" : [ 65.0, 253.0, 77.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "opendialog sound",
																	"patching_rect" : [ 65.0, 210.0, 96.0, 18.0 ],
																	"outlettype" : [ "", "bang" ],
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel bang",
																	"patching_rect" : [ 65.0, 173.0, 104.0, 18.0 ],
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "By using opendialog it's made sure that any opendialog message that's reaching sfplay~ also has a filename argument.",
																	"linecount" : 2,
																	"patching_rect" : [ 39.0, 62.0, 335.0, 30.0 ],
																	"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "That way we know for certain that any \"open\" message reaching sfplay~ implies that a new file is to be opened imideately. Hence the Play button can be turned of instantly.",
																	"linecount" : 3,
																	"patching_rect" : [ 39.0, 90.0, 334.0, 42.0 ],
																	"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "The \"Play\" GUI button should be turned of when a new file is opened.",
																	"patching_rect" : [ 39.0, 43.0, 354.0, 18.0 ],
																	"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"fontsize" : 9.873845,
																	"numinlets" : 1,
																	"numoutlets" : 0
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-3", 0 ],
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
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 159.5, 227.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"patching_rect" : [ 333.0, 112.0, 34.0, 18.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_done",
													"patching_rect" : [ 333.0, 203.0, 86.0, 18.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"patching_rect" : [ 333.0, 174.0, 22.0, 18.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"patching_rect" : [ 333.0, 147.0, 30.0, 18.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sfplay~ 2 403200 1",
													"patching_rect" : [ 206.0, 117.0, 106.0, 18.0 ],
													"outlettype" : [ "signal", "signal", "signal", "bang" ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 4,
													"save" : [ "#N", "sfplay~", "eple", 2, 403200, 1, "", ";" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 266.0, 283.0, 15.0, 15.0 ],
													"id" : "obj-17",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 236.0, 283.0, 15.0, 15.0 ],
													"id" : "obj-18",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 206.0, 283.0, 15.0, 15.0 ],
													"id" : "obj-19",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 3 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 171.0, 342.5, 171.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 3 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 287.5, 77.0, 342.5, 77.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 3 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 135.5, 106.0, 215.5, 106.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 149.5, 160.0, 202.0, 160.0, 202.0, 110.0, 215.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 106.0, 215.5, 106.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p audio_in",
									"patching_rect" : [ 271.0, 268.0, 61.0, 19.0 ],
									"outlettype" : [ "signal", "signal" ],
									"id" : "obj-28",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 59.0, 600.0, 426.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t open",
													"patching_rect" : [ 172.0, 115.0, 40.0, 18.0 ],
													"outlettype" : [ "open" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 2 $1",
													"patching_rect" : [ 111.0, 116.0, 49.0, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 1 $1",
													"patching_rect" : [ 50.0, 116.0, 49.0, 16.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /ch_1 /ch_2 /dsp_status",
													"patching_rect" : [ 50.0, 76.0, 204.0, 18.0 ],
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adc~",
													"patching_rect" : [ 50.0, 298.0, 34.0, 18.0 ],
													"outlettype" : [ "signal", "signal" ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 69.0, 320.0, 15.0, 15.0 ],
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 50.0, 320.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p 1kHz",
									"patching_rect" : [ 453.0, 268.0, 43.0, 19.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 59.0, 600.0, 426.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 48.0, 35.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "We don't need pass~ as this signal won't be selected~ anyway when it's muted.",
													"linecount" : 2,
													"patching_rect" : [ 147.0, 87.0, 216.0, 30.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~ 0.125",
													"patching_rect" : [ 48.0, 105.0, 55.0, 18.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cycle~ 1000",
													"patching_rect" : [ 48.0, 78.0, 70.0, 18.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 48.0, 127.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p pink~",
									"patching_rect" : [ 544.0, 268.0, 48.0, 19.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 59.0, 600.0, 426.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 49.0, 25.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pink~",
													"patching_rect" : [ 49.0, 74.0, 38.0, 18.0 ],
													"outlettype" : [ "signal" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 49.0, 140.0, 15.0, 15.0 ],
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "We don't need pass~ as this signal won't be selected~ anyway when it's muted.",
													"linecount" : 2,
													"patching_rect" : [ 80.0, 111.0, 216.0, 30.0 ],
													"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Avoid using more CPU than required",
									"linecount" : 2,
									"patching_rect" : [ 597.0, 174.0, 104.0, 31.0 ],
									"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"id" : "obj-31",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-30", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 141.0, 553.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 141.0, 462.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 2 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 237.0, 408.5, 237.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 241.5, 253.0, 371.5, 253.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 141.0, 371.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 241.5, 256.0, 280.5, 256.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 141.0, 280.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-25", 4 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 553.5, 371.0, 230.5, 371.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-25", 3 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 462.5, 366.0, 217.75, 366.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-25", 2 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 390.0, 361.0, 205.0, 361.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 322.5, 357.0, 192.25, 357.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-23", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 240.0, 179.5, 240.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-26", 4 ],
									"hidden" : 0,
									"midpoints" : [ 553.5, 324.0, 155.5, 324.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-26", 3 ],
									"hidden" : 0,
									"midpoints" : [ 462.5, 318.0, 142.75, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 2 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 313.0, 130.0, 313.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [ 280.5, 309.0, 117.25, 309.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Open_button",
					"hidden" : 1,
					"patching_rect" : [ 727.0, 134.0, 100.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Loop_toggle",
					"hidden" : 1,
					"patching_rect" : [ 727.0, 363.0, 96.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Play_button",
					"hidden" : 1,
					"patching_rect" : [ 727.0, 279.0, 94.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-59",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar input_menu 2",
					"hidden" : 1,
					"patching_rect" : [ 727.0, 98.0, 104.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-60",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message sf_open @type msg_symbol @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 727.0, 155.0, 448.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-61",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "input_menu",
					"types" : [  ],
					"patching_rect" : [ 141.0, 1.0, 100.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-62",
					"fontname" : "Verdana",
					"rounded" : 15,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"items" : [ "none", ",", "live", ",", "soundfile", ",", "1KHz", ",", "pink" ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"patching_rect" : [ 35.0, 20.0, 160.0, 52.0 ],
					"pic" : "jcom.bg.hgain.pct",
					"id" : "obj-63",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "source_select",
					"text" : "jcom.parameter source_select @type msg_symbol @description \"Select what audio source to use.\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 727.0, 65.0, 267.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-64",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[9]",
					"text" : "jcom.message direct @description container for various messages sent directly to the sfplay~ object. Refer to the MSP documentation for further details.",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 727.0, 401.0, 411.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-65",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play",
					"text" : "jcom.parameter play @description \"Play sound file.\"",
					"hidden" : 1,
					"patching_rect" : [ 727.0, 256.0, 271.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-66",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter loop @type msg_toggle @description \"Loop soundfile.\"",
					"hidden" : 1,
					"patching_rect" : [ 727.0, 342.0, 368.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-67",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"hidden" : 1,
					"patching_rect" : [ 45.0, 475.0, 106.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-68",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 75.0, 446.0, 20.0, 20.0 ],
					"id" : "obj-69",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "(signal) Right Channel"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 9.0, 256.0, 15.0, 15.0 ],
					"id" : "obj-70",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 45.0, 446.0, 20.0, 20.0 ],
					"id" : "obj-71",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "(signal) Left Channel"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 9.0, 177.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-72",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Time_Display",
					"types" : [  ],
					"patching_rect" : [ 200.0, 103.0, 93.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-73",
					"fontname" : "Verdana",
					"rounded" : 15,
					"menumode" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"items" : "O0:O0:O0",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "All communication with interface is done using pvar",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 666.0, 7.0, 195.0, 31.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-74",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop",
					"patching_rect" : [ 230.0, 65.0, 30.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-76",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The set message is important to prevent feedback into jcom.parameter.gain from killing ongoing ramps",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 345.0, 36.0, 273.0, 31.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-77",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "DSP_Status",
					"patching_rect" : [ 245.0, 1.0, 50.0, 18.0 ],
					"outlettype" : [ "int", "", "int" ],
					"id" : "obj-82",
					"fontname" : "Verdana",
					"rounded" : 15.0,
					"texton" : "DSP",
					"text" : "DSP",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-78",
					"background" : 1,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 66.5, 197.0, 18.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 76.5, 197.0, 18.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 204.5, 197.0, 18.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [ 736.5, 384.0, 724.0, 384.0, 724.0, 338.0, 736.5, 338.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"midpoints" : [ 736.5, 300.0, 723.0, 300.0, 723.0, 252.0, 736.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 1 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [ 821.5, 118.0, 723.0, 118.0, 723.0, 58.0, 736.5, 58.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [ 295.5, 534.0, 281.0, 534.0, 281.0, 479.0, 295.5, 479.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [ 295.5, 472.0, 281.0, 472.0, 281.0, 417.0, 295.5, 417.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [ 485.0, 128.0, 354.5, 128.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [ 354.5, 121.0, 339.0, 121.0, 339.0, 63.0, 354.5, 63.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 2 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 1 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [ 122.5, 370.0, 54.5, 370.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
