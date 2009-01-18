{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 200.0, 300.0, 70.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"defrect" : [ 193.0, 154.0, 1152.0, 631.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.970939,
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
					"patching_rect" : [ 70.0, 345.0, 26.0, 26.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"id" : "obj-5",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 578.0, 408.0, 35.0, 17.0 ],
					"maximum" : 0.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-81",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 189.0, 45.0, 27.0, 17.0 ],
					"fontsize" : 9.0,
					"minimum" : -90.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands[7]",
					"text" : "jcom.parameter tail @type msg_float @repetitions/allow 1 @range/bounds -90. 0. @description \"• Tail level (dB): The level of the classic reverb tail reflections. Values: -90 - 0 dB\"",
					"linecount" : 2,
					"patching_rect" : [ 579.0, 432.0, 594.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-82",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tail",
					"patching_rect" : [ 622.0, 408.0, 70.0, 17.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-83",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation_rect" : [ 170.0, 45.0, 22.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 573.0, 330.0, 35.0, 17.0 ],
					"maximum" : 0.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-77",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 141.0, 45.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"minimum" : -90.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands[5]",
					"text" : "jcom.parameter early @type msg_float @repetitions/allow 1 @range/bounds -90. 0. @description \"• Early reflection level (dB): The quantity of early reflections (scatter reflections directly from the source). Think of Lexicons ambiance patches. Values: -90 - 0 dB\"",
					"linecount" : 3,
					"patching_rect" : [ 574.0, 355.0, 594.0, 43.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-79",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "early reflection",
					"patching_rect" : [ 629.0, 329.0, 70.0, 17.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-80",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation_rect" : [ 77.0, 45.0, 70.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 571.0, 253.0, 35.0, 17.0 ],
					"maximum" : 1.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-69",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 50.0, 45.0, 24.0, 17.0 ],
					"fontsize" : 9.0,
					"minimum" : 0.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands[4]",
					"text" : "jcom.parameter bandwidth @type msg_float @repetitions/allow 1 @range/bounds 0. 1. @description \"• Input bandwidth: This is like a damping control for the input, it has a similar effect to the damping control, but is subtly different. Values: 0 - 1\"",
					"linecount" : 3,
					"patching_rect" : [ 572.0, 278.0, 589.0, 43.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-74",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bandwidth",
					"patching_rect" : [ 627.0, 252.0, 70.0, 17.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-75",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation_rect" : [ 5.0, 45.0, 50.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A mono in, stereo out reverb implementation by Juhana Sadeharju (kouhia@nic.funet.fi). Max/MSP-ified by Olaf Matthes.",
					"linecount" : 2,
					"patching_rect" : [ 213.0, 615.0, 315.0, 27.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"patching_rect" : [ 525.0, 496.0, 36.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "dry -90.",
					"patching_rect" : [ 169.0, 567.0, 42.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tail $1",
					"patching_rect" : [ 421.0, 496.0, 40.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"patching_rect" : [ 462.0, 496.0, 59.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "revtime $1",
					"patching_rect" : [ 227.0, 496.0, 64.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gigaverb~",
					"patching_rect" : [ 88.0, 612.0, 129.0, 34.0 ],
					"numoutlets" : 0,
					"id" : "obj-40",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 24.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Version 1.0test3, (c) 1999-2004 Juhana Sadeharju / Olaf Matthes",
					"patching_rect" : [ 88.0, 645.0, 337.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-24",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "early $1",
					"patching_rect" : [ 367.0, 496.0, 46.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bandwidth $1",
					"patching_rect" : [ 298.125, 496.0, 64.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "damping $1",
					"patching_rect" : [ 155.0, 496.0, 64.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "roomsize $1",
					"patching_rect" : [ 85.0, 496.0, 65.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gigaverb~ 300 15",
					"patching_rect" : [ 69.0, 531.0, 84.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 104.0, 579.0, 26.0, 26.0 ],
					"numoutlets" : 0,
					"id" : "obj-78",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /roomsize /damping /revtime /bandwidth /early /tail /audio/bypass /clear",
					"patching_rect" : [ 88.0, 464.0, 467.0, 19.0 ],
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-76",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"patching_rect" : [ 170.0, 545.0, 59.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-72",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands[6]",
					"text" : "jcom.parameter clear @type msg_none @repetitions/allow 1 @description \"• Clear the delay lines after a DSP overblow or to get rid of any remaining delay tailes.\"",
					"linecount" : 2,
					"patching_rect" : [ 577.0, 510.0, 608.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-71",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoveroncolor" : [ 0.0, 1.0, 0.05098, 1.0 ],
					"patching_rect" : [ 578.0, 485.0, 54.0, 16.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"bgoncolor" : [ 0.0, 1.0, 0.05098, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-70",
					"fontname" : "Verdana",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "Freeze",
					"text" : "clear !",
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 234.0, 44.0, 54.0, 16.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 572.0, 171.0, 35.0, 17.0 ],
					"maximum" : 360.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-60",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 224.0, 21.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"minimum" : 0.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands[3]",
					"text" : "jcom.parameter revtime @type msg_float @repetitions/allow 1 @range/bounds 0.1 360. @description \"• Reverb time (s): Reverb decay time, in seconds. 7 is a good place to start. Values: 0.1 - 360 seconds!\"",
					"linecount" : 2,
					"patching_rect" : [ 569.0, 194.0, 590.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-61",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reverb time",
					"patching_rect" : [ 627.0, 171.0, 56.0, 17.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-62",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation_rect" : [ 169.0, 21.0, 56.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 572.0, 91.0, 35.0, 17.0 ],
					"maximum" : 1.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 124.0, 21.0, 28.0, 17.0 ],
					"fontsize" : 9.0,
					"minimum" : 0.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands[2]",
					"text" : "jcom.parameter damping @type msg_float @repetitions/allow 1 @range/bounds 0. 1. @description \"The amount of damping of the room's surfaces. 0 means nearly no damping, resulting on a lot of refelction (long reverb), 1. means high damping of signals (short reverb).\"",
					"linecount" : 3,
					"patching_rect" : [ 573.0, 116.0, 584.0, 43.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "damping",
					"patching_rect" : [ 627.0, 91.0, 47.0, 17.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-59",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation_rect" : [ 76.0, 21.0, 47.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 567.0, 11.0, 35.0, 17.0 ],
					"maximum" : 300.0,
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 52.0, 21.0, 28.0, 17.0 ],
					"fontsize" : 9.0,
					"minimum" : 1.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands[1]",
					"text" : "jcom.parameter roomsize @type msg_float @repetitions/allow 1 @range/bounds 1. 300. @description \"• The size of the room, in meters. Excessivly large, and excessivly small values will make it sound a bit unrealistic. Values of around 30 sound good. Values: 1 - 300 meters (or what ever was specified as maximum)\"",
					"linecount" : 3,
					"patching_rect" : [ 568.0, 36.0, 602.0, 43.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "roomsize",
					"patching_rect" : [ 622.0, 11.0, 49.0, 17.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-50",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation_rect" : [ 7.0, 21.0, 47.0, 17.0 ],
					"fontsize" : 9.191489,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"patching_rect" : [ 68.0, 555.0, 85.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"patching_rect" : [ 185.0, 420.0, 166.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"patching_rect" : [ 35.0, 235.0, 196.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 1",
					"patching_rect" : [ 65.0, 390.0, 262.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "signal", "", "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"patching_rect" : [ 55.0, 260.0, 137.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"Reverb module using gigaverb~ \"",
					"linecount" : 2,
					"patching_rect" : [ 5.0, 295.0, 331.0, 31.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"patching_rect" : [ 35.0, 175.0, 87.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 5.0, 175.0, 26.0, 26.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"patching_rect" : [ 195.0, 260.0, 37.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 65.0, 579.0, 26.0, 26.0 ],
					"numoutlets" : 0,
					"id" : "obj-34",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 5.0, 330.0, 26.0, 26.0 ],
					"numoutlets" : 0,
					"id" : "obj-38",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/gigaverb.1",
					"prefix" : "audio",
					"numoutlets" : 1,
					"presentation" : 1,
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"has_mix" : 1,
					"has_bypass" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_gain" : 1,
					"numinlets" : 1,
					"has_meters" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 281.0, 14.5, 281.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 283.0, 14.5, 283.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 279.0, 14.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [ 578.5, 242.0, 560.0, 242.0, 560.0, 167.0, 581.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 582.5, 159.0, 560.0, 159.0, 560.0, 87.0, 581.5, 87.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 534.5, 517.0, 78.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 471.5, 517.0, 78.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 376.5, 517.0, 78.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 307.625, 517.0, 78.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 164.5, 517.0, 78.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 517.0, 78.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 236.5, 517.0, 78.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 430.5, 517.0, 78.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 178.5, 583.0, 153.0, 583.0, 153.0, 526.0, 78.5, 526.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 577.5, 79.0, 555.0, 79.0, 555.0, 7.0, 576.5, 7.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [ 581.5, 321.0, 559.0, 321.0, 559.0, 249.0, 580.5, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [ 583.5, 398.0, 561.0, 398.0, 561.0, 326.0, 582.5, 326.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
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
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [ 588.5, 476.0, 566.0, 476.0, 566.0, 404.0, 587.5, 404.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [ 586.5, 544.0, 564.0, 544.0, 564.0, 480.0, 587.5, 480.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [ 341.5, 453.0, 97.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 2 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 3 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 4 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 5 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 6 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 7 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
