{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 141.0, 183.0, 1280.0, 732.0 ],
		"bglocked" : 0,
		"defrect" : [ 141.0, 183.0, 1280.0, 732.0 ],
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
					"maxclass" : "comment",
					"text" : "patch Nicolas Deflache, february 2009",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 380.0, 46.0, 171.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 370.0, 258.0, 56.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 3.0, 61.0, 80.0, 4.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 232.0, 544.0, 80.0, 4.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 3.0, 38.0, 80.0, 4.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 192.0, 536.0, 80.0, 4.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 293.0, 326.0, 24.0, 24.0 ],
					"numoutlets" : 1,
					"id" : "obj-50",
					"outlettype" : [ "" ],
					"comment" : "signal~ 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 221.0, 326.0, 24.0, 24.0 ],
					"numoutlets" : 1,
					"id" : "obj-49",
					"outlettype" : [ "" ],
					"comment" : "signal~ 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-IR.2/gain",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 615.0, 637.0, 85.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-IR.1/gain",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 608.0, 526.0, 85.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-IR.2/text",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 1002.0, 180.0, 80.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-IR.1/text",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 777.0, 88.0, 80.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "temporary, until init on audio/mute is fixed",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 437.0, 272.0, 130.0, 34.0 ],
					"numoutlets" : 0,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 370.0, 236.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/mute 0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 370.0, 307.0, 184.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 370.0, 284.0, 55.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-31",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dB",
					"linecount" : 2,
					"fontname" : "Verdana",
					"presentation_rect" : [ 279.0, 32.0, 23.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 284.0, 34.0, 17.0, 31.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Preamp[1]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 256.0, 44.0, 28.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 614.0, 560.0, 48.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-25",
					"minimum" : -48.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"maximum" : 15.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "preamp[1]",
					"text" : "jcom.parameter IR.2/gain @type msg_float @range/bounds -48 15 @range/clipmode both @ramp/drive scheduler @ramp/function linear @dataspace gain @dataspace/unit/active dB @dataspace/unit/native dB @description \"Individual gain (dB) applied to each impulse response\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 615.0, 589.0, 593.0, 43.0 ],
					"numoutlets" : 3,
					"id" : "obj-28",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-IR.2/gainr",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 685.0, 561.0, 87.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Preamp",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 256.0, 22.0, 28.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 607.0, 453.0, 48.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-23",
					"minimum" : -48.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"maximum" : 15.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "preamp",
					"text" : "jcom.parameter IR.1/gain @type msg_float @range/bounds -48 15 @range/clipmode both @ramp/drive scheduler @ramp/function linear @dataspace gain @dataspace/unit/active dB @dataspace/unit/native dB @description \"Individual gain (dB) applied to each impulse response\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 608.0, 479.0, 593.0, 43.0 ],
					"numoutlets" : 3,
					"id" : "obj-24",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-IR.1/gainr",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 663.0, 452.0, 87.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-IR.2/buffer",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 652.0, 352.0, 91.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-IR.2/open",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 665.0, 199.0, 87.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-IR.1/buffer",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 656.0, 283.0, 91.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-IR.1/open",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 663.0, 112.0, 87.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "drag & drop currently not available",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 960.0, 94.0, 196.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t s f",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 214.0, 635.0, 32.5, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-118",
					"outlettype" : [ "", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button[3]",
					"fontname" : "Verdana",
					"presentation_rect" : [ 184.0, 45.0, 38.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"patching_rect" : [ 608.0, 352.0, 40.0, 18.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"id" : "obj-40",
					"rounded" : 15.0,
					"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
					"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
					"text" : "buffer",
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
					"outlettype" : [ "", "", "int" ],
					"texton" : "DSP",
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[6]",
					"text" : "jcom.message IR.2/buffer @type msg_generic @repetitions/allow 1 @description \"Open buffer window, displaying impulse response\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 608.0, 377.0, 591.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-72",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "f",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 97.0, 678.0, 32.5, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-101",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 99.0, 710.0, 74.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-98",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 4 0",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 56.0, 735.0, 59.5, 20.0 ],
					"numoutlets" : 4,
					"id" : "obj-99",
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /IR/info/size",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 54.0, 637.0, 148.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-87",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscinstance",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 53.0, 545.0, 100.0, 19.0 ],
					"numoutlets" : 4,
					"id" : "obj-88",
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"types" : [ "sound" ],
					"patching_rect" : [ 895.0, 95.0, 64.0, 16.0 ],
					"numoutlets" : 2,
					"border" : 0.0,
					"id" : "obj-26",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"types" : [ "sound" ],
					"patching_rect" : [ 859.0, 185.0, 72.0, 16.0 ],
					"numoutlets" : 2,
					"border" : 0.0,
					"id" : "obj-64",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button[1]",
					"fontname" : "Verdana",
					"presentation_rect" : [ 184.0, 22.0, 38.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"patching_rect" : [ 610.0, 284.0, 40.0, 18.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"id" : "obj-82",
					"rounded" : 15.0,
					"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
					"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
					"text" : "buffer",
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
					"outlettype" : [ "", "", "int" ],
					"texton" : "DSP",
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[5]",
					"text" : "jcom.message IR.1/buffer @type msg_generic @repetitions/allow 1 @description \"Open buffer window, displaying impulse response\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 610.0, 309.0, 591.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-84",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button",
					"fontname" : "Verdana",
					"presentation_rect" : [ 119.0, 22.0, 64.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"patching_rect" : [ 611.0, 115.0, 50.0, 18.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"id" : "obj-18",
					"rounded" : 15.0,
					"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
					"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
					"text" : "Open",
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
					"outlettype" : [ "", "", "int" ],
					"texton" : "DSP",
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button[2]",
					"fontname" : "Verdana",
					"presentation_rect" : [ 119.0, 45.0, 64.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"patching_rect" : [ 610.0, 205.0, 50.0, 18.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"id" : "obj-75",
					"rounded" : 15.0,
					"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
					"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
					"text" : "Open",
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
					"outlettype" : [ "", "", "int" ],
					"texton" : "DSP",
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[4]",
					"text" : "jcom.message IR.2/open @type msg_generic @repetitions/allow 1 @description \"Open impulse response specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 610.0, 228.0, 592.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-71",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 859.0, 206.0, 129.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-70",
					"outlettype" : [ "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"presentation_rect" : [ 224.0, 44.0, 25.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 98.0, 776.0, 31.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-62",
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "IR.2",
					"fontname" : "Verdana",
					"presentation_rect" : [ 2.0, 45.0, 216.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1002.0, 206.0, 38.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"presentation_rect" : [ 224.0, 21.0, 25.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 52.0, 775.0, 31.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-61",
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "s",
					"fontname" : "Verdana",
					"presentation_rect" : [ 240.0, 32.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 249.0, 25.0, 17.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 895.0, 117.0, 129.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-57",
					"outlettype" : [ "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "IR.1",
					"fontname" : "Verdana",
					"presentation_rect" : [ 2.0, 22.0, 217.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 778.0, 114.0, 38.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 171.0, 465.0, 24.0, 24.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"comment" : "signal~ 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 140.0, 464.0, 24.0, 24.0 ],
					"numoutlets" : 0,
					"id" : "obj-13",
					"comment" : "signal~ 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p panel",
					"fontname" : "Arial",
					"numinlets" : 5,
					"fontsize" : 14.0,
					"patching_rect" : [ 249.0, 415.0, 59.0, 23.0 ],
					"numoutlets" : 0,
					"id" : "obj-42",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 261.0, 44.0, 1000.0, 752.0 ],
						"bglocked" : 0,
						"defrect" : [ 261.0, 44.0, 1000.0, 752.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p check-items",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 943.0, 100.0, 85.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-84",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 281.0, 352.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 281.0, 352.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 16.",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 95.0, 81.0, 34.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-31",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "log2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 95.0, 104.0, 33.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-28",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 288.0, 217.0, 32.5, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 240.0, 283.0, 39.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-5",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack i i",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 240.0, 259.0, 48.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 222.0, 125.0, 32.5, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-83",
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 220.0, 196.0, 32.5, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-81",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 236.0, 162.0, 46.0, 20.0 ],
													"numoutlets" : 3,
													"id" : "obj-79",
													"outlettype" : [ "bang", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "< 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 240.0, 224.0, 32.5, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-71",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "checkitem $1 $2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 11.595187,
													"patching_rect" : [ 240.0, 307.0, 95.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-70",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"patching_rect" : [ 30.0, 30.0, 20.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-29",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus sigvs",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 11.595187,
													"patching_rect" : [ 30.0, 56.204224, 84.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-52",
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 153.0, 352.0, 60.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 239.0, 419.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setcheck 8226",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 11.595187,
													"patching_rect" : [ 184.0, 385.0, 86.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-63",
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-83", 0 ],
													"destination" : [ "obj-79", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-83", 1 ],
													"destination" : [ "obj-81", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 0 ],
													"destination" : [ "obj-81", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-81", 0 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 2 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 1 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-83", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 2 ],
													"destination" : [ "obj-71", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 484.0, 901.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-69",
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 372.0, 901.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-68",
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 264.0, 901.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-67",
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 157.0, 901.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-65",
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "these 2 should be set @repetitions/allow 0, but it causes too much trouble on init... waiting for a fix",
									"linecount" : 2,
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1116.0, 84.0, 285.0, 34.0 ],
									"numoutlets" : 0,
									"id" : "obj-64"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-IR.2/gainr",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 854.0, 331.0, 89.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-IR.1/gainr",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 852.0, 225.0, 89.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-46"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-IR.2/gain",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 850.0, 281.0, 83.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-49",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-IR.1/gain",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 854.0, 176.0, 83.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-51",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-IR.2/text",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 820.0, 877.0, 82.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-IR.1/text",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 727.0, 878.0, 82.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 1000.0, 716.0, 32.5, 19.0 ],
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p display-mute-state-filename",
									"fontname" : "Arial",
									"numinlets" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 728.0, 759.0, 168.0, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-37",
									"outlettype" : [ "", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 331.0, 183.0, 925.0, 644.0 ],
										"bglocked" : 0,
										"defrect" : [ 331.0, 183.0, 925.0, 644.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "!",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 746.0, 408.0, 19.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-34",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 751.0, 434.0, 54.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-35",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "!",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 676.0, 408.0, 19.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-32",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 681.0, 433.0, 54.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-33",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "!",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 597.0, 408.0, 19.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-30",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 602.0, 434.0, 54.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-31",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "!",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 518.0, 408.0, 19.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-29",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 523.0, 434.0, 54.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-19",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mute state",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 220.0, 30.0, 100.0, 20.0 ],
													"numoutlets" : 0,
													"id" : "obj-21"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "instance number",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 612.0, 46.0, 100.0, 20.0 ],
													"numoutlets" : 0,
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "filename",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 447.0, 88.0, 150.0, 20.0 ],
													"numoutlets" : 0,
													"id" : "obj-18"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 325.0, 562.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 255.0, 564.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-12",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 176.0, 564.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-15",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 97.0, 562.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-17",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 4 0",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 409.0, 214.0, 59.5, 20.0 ],
													"numoutlets" : 4,
													"id" : "obj-91",
													"outlettype" : [ "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 450.0, 48.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-26",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p mute",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"patching_rect" : [ 99.0, 177.0, 246.5, 19.0 ],
													"numoutlets" : 4,
													"id" : "obj-25",
													"outlettype" : [ "", "", "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 76.0, 285.0, 786.0, 610.0 ],
														"bglocked" : 0,
														"defrect" : [ 76.0, 285.0, 786.0, 610.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 490.0, 396.0, 26.0, 26.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-15",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 529.0, 395.0, 26.0, 26.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-13",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 564.0, 397.0, 26.0, 26.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-12",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4 0",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"patching_rect" : [ 561.0, 315.0, 59.5, 19.0 ],
																	"numoutlets" : 4,
																	"id" : "obj-11",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "instance number",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 589.0, 59.0, 99.0, 19.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 561.0, 55.0, 26.0, 26.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-2",
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 609.0, 393.0, 26.0, 26.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-7",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 321.0, 52.0, 26.0, 26.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-14",
																	"outlettype" : [ "int" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 3 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 1 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-11", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 330.5, 251.0, 611.0, 251.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 655.0, 69.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-23",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 99.0, 294.0, 58.0, 20.0 ],
													"numoutlets" : 3,
													"id" : "obj-22",
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 327.0, 294.0, 58.0, 20.0 ],
													"numoutlets" : 3,
													"id" : "obj-16",
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 258.0, 291.0, 58.0, 20.0 ],
													"numoutlets" : 3,
													"id" : "obj-14",
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 178.0, 291.0, 58.0, 20.0 ],
													"numoutlets" : 3,
													"id" : "obj-13",
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "processing disabled",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 401.0, 348.0, 117.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-11",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "IR.4",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 327.0, 348.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-10",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "IR.3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 257.0, 349.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "IR.2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 178.0, 349.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "IR.1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 99.0, 350.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 243.0, 56.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 325.0, 530.0, 74.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 250.0, 529.0, 74.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 171.0, 529.0, 74.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"patching_rect" : [ 92.0, 527.0, 74.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-91", 3 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 2 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 1 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 0 ],
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-3", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 3 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [ 336.0, 279.0, 324.0, 279.0, 324.0, 333.0, 312.0, 333.0, 312.0, 387.0, 755.5, 387.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 2 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [ 260.166656, 276.0, 685.5, 276.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [ 184.333328, 276.0, 606.5, 276.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [ 108.5, 279.0, 527.5, 279.0 ]
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 356.0, 331.0, 410.5, 331.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 3 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 336.0, 198.0, 336.5, 198.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 287.0, 332.0, 410.5, 332.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 2 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 260.166656, 276.0, 267.5, 276.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 207.0, 332.0, 410.5, 332.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 184.333328, 288.0, 187.5, 288.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 128.0, 332.0, 410.5, 332.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-91", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 3 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [ 459.0, 333.0, 350.5, 333.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 2 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [ 445.5, 333.0, 280.5, 333.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 1 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [ 432.0, 333.0, 201.5, 333.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [ 418.5, 333.0, 122.5, 333.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 410.5, 393.0, 334.5, 393.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 410.5, 472.0, 259.5, 472.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 410.5, 393.0, 180.5, 393.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 410.5, 472.0, 101.5, 472.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-91", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 532.5, 513.0, 101.5, 513.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 611.5, 516.0, 180.5, 516.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 690.5, 516.0, 259.5, 516.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 760.5, 516.0, 334.5, 516.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "gain (dB)",
									"presentation_linecount" : 2,
									"fontname" : "Verdana",
									"presentation_rect" : [ 425.0, 44.0, 33.0, 31.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 441.0, 55.0, 57.0, 19.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Preamp[4]",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"presentation_rect" : [ 423.0, 142.0, 36.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 964.0, 366.0, 48.0, 19.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-56",
									"minimum" : -48.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"maximum" : 15.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "preamp[2]",
									"text" : "jcom.parameter IR.4/gain @type msg_float @range/bounds -48 15 @range/clipmode both @ramp/drive scheduler @ramp/function linear @dataspace gain @dataspace/unit/active dB @dataspace/unit/native dB @description \"Individual gain (dB) applied to each impulse response\"",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 964.0, 394.0, 593.0, 43.0 ],
									"numoutlets" : 3,
									"id" : "obj-57",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "#0-IR.1/gain",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"presentation_rect" : [ 423.0, 73.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 854.0, 202.0, 48.0, 19.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-50",
									"minimum" : -48.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"maximum" : 15.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "#0-IR.2/gain",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"presentation_rect" : [ 423.0, 95.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 854.0, 305.0, 48.0, 19.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-48",
									"minimum" : -48.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"maximum" : 15.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Preamp[1]",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"presentation_rect" : [ 423.0, 118.0, 36.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 970.0, 241.0, 48.0, 19.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-44",
									"minimum" : -48.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"maximum" : 15.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "preamp[1]",
									"text" : "jcom.parameter IR.3/gain @type msg_float @range/bounds -48 15 @range/clipmode both @ramp/drive scheduler @ramp/function linear @dataspace gain @dataspace/unit/active dB @dataspace/unit/native dB @description \"Individual gain (dB) applied to each impulse response\"",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 970.0, 268.0, 593.0, 43.0 ],
									"numoutlets" : 3,
									"id" : "obj-45",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-IR.2/buffer",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 754.0, 312.0, 93.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-IR.2/open",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 661.0, 313.0, 89.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-IR.1/buffer",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 757.0, 224.0, 93.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-IR.1/open",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 664.0, 225.0, 89.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"varname" : "Open_button[3]",
									"fontname" : "Verdana",
									"presentation_rect" : [ 247.0, 95.0, 38.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
									"patching_rect" : [ 747.0, 284.0, 40.0, 18.0 ],
									"numoutlets" : 3,
									"presentation" : 1,
									"id" : "obj-40",
									"rounded" : 15.0,
									"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
									"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
									"text" : "buffer",
									"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
									"outlettype" : [ "", "", "int" ],
									"texton" : "DSP",
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"varname" : "Open_button[1]",
									"fontname" : "Verdana",
									"presentation_rect" : [ 247.0, 73.0, 38.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
									"patching_rect" : [ 746.0, 194.0, 40.0, 18.0 ],
									"numoutlets" : 3,
									"presentation" : 1,
									"id" : "obj-82",
									"rounded" : 15.0,
									"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
									"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
									"text" : "buffer",
									"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
									"outlettype" : [ "", "", "int" ],
									"texton" : "DSP",
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"varname" : "Open_button",
									"fontname" : "Verdana",
									"presentation_rect" : [ 182.0, 73.0, 64.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
									"patching_rect" : [ 687.0, 194.0, 50.0, 18.0 ],
									"numoutlets" : 3,
									"presentation" : 1,
									"id" : "obj-1",
									"rounded" : 15.0,
									"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
									"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
									"text" : "Open",
									"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
									"outlettype" : [ "", "", "int" ],
									"texton" : "DSP",
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"varname" : "Open_button[2]",
									"fontname" : "Verdana",
									"presentation_rect" : [ 182.0, 95.0, 64.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
									"patching_rect" : [ 687.0, 284.0, 50.0, 18.0 ],
									"numoutlets" : 3,
									"presentation" : 1,
									"id" : "obj-75",
									"rounded" : 15.0,
									"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
									"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
									"text" : "Open",
									"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
									"outlettype" : [ "", "", "int" ],
									"texton" : "DSP",
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jcom.meter~",
									"presentation_rect" : [ 14.0, 163.0, 80.0, 4.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 484.0, 936.0, 80.0, 4.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jcom.meter~",
									"presentation_rect" : [ 14.0, 137.0, 80.0, 4.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 372.0, 936.0, 80.0, 4.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jcom.meter~",
									"presentation_rect" : [ 14.0, 113.0, 80.0, 4.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 264.0, 936.0, 80.0, 4.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jcom.meter~",
									"presentation_rect" : [ 14.0, 89.0, 80.0, 4.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 157.0, 936.0, 80.0, 4.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "channels",
									"fontname" : "Verdana",
									"presentation_rect" : [ 373.0, 54.0, 53.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1318.0, 845.0, 57.0, 19.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "length(s)",
									"fontname" : "Verdana",
									"presentation_rect" : [ 272.0, 54.0, 54.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1146.0, 843.0, 56.0, 19.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s f",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1192.0, 612.0, 32.5, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-118",
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 1329.0, 716.0, 32.5, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-107",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1331.0, 748.0, 74.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-108",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 4 0",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 1288.0, 773.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-109",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Arial",
									"ignoreclick" : 1,
									"presentation_rect" : [ 387.0, 142.0, 28.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1385.0, 811.0, 21.0, 20.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-106",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Arial",
									"ignoreclick" : 1,
									"presentation_rect" : [ 387.0, 118.0, 28.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1355.0, 814.0, 21.0, 20.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-105",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Arial",
									"ignoreclick" : 1,
									"presentation_rect" : [ 387.0, 95.0, 28.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1323.0, 813.0, 21.0, 20.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-104",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Arial",
									"ignoreclick" : 1,
									"presentation_rect" : [ 387.0, 73.0, 17.996094, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1293.0, 814.0, 21.0, 20.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-16",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 1144.0, 712.0, 32.5, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-101",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1146.0, 744.0, 74.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-98",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 4 0",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 1103.0, 769.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-99",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"ignoreclick" : 1,
									"presentation_rect" : [ 292.0, 142.0, 25.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1229.0, 814.0, 31.0, 20.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-97",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"ignoreclick" : 1,
									"presentation_rect" : [ 292.0, 118.0, 25.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1185.0, 811.0, 31.0, 20.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-95",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 725.0, 721.0, 239.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-92",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /filename /size /channels",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 901.0, 634.0, 241.0, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-17",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /IR/info /IR/mute",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 901.0, 608.0, 174.0, 19.0 ],
									"numoutlets" : 3,
									"id" : "obj-18",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscinstance",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 900.0, 516.0, 100.0, 19.0 ],
									"numoutlets" : 4,
									"id" : "obj-88",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "processing disabled",
									"linecount" : 4,
									"fontname" : "Verdana",
									"presentation_rect" : [ 12.0, 142.0, 218.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 878.0, 815.0, 38.0, 55.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-78"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "processing disabled",
									"linecount" : 4,
									"fontname" : "Verdana",
									"presentation_rect" : [ 12.0, 118.0, 217.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 833.0, 813.0, 38.0, 55.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-77"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"ignoreclick" : 1,
									"presentation_rect" : [ 292.0, 95.0, 25.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1145.0, 810.0, 31.0, 20.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-62",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "IR.2",
									"fontname" : "Verdana",
									"presentation_rect" : [ 12.0, 95.0, 216.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 784.0, 816.0, 38.0, 19.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-66"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"ignoreclick" : 1,
									"presentation_rect" : [ 292.0, 73.0, 25.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1099.0, 809.0, 31.0, 20.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-61",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "IR.1",
									"fontname" : "Verdana",
									"presentation_rect" : [ 12.0, 73.0, 217.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 732.0, 817.0, 38.0, 19.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "saturation/active[2]",
									"text" : "jcom.parameter IR.4/reverse @type msg_toggle @description \"Reverse IR on/off\"",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 230.0, 821.0, 425.0, 19.0 ],
									"numoutlets" : 3,
									"id" : "obj-11",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"presentation_rect" : [ 345.0, 142.0, 18.0, 18.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 196.0, 821.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"presentation" : 1,
									"id" : "obj-12",
									"inactivecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "saturation/active[3]",
									"text" : "jcom.parameter IR.3/reverse @type msg_toggle @description \"Reverse IR on/off\"",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 230.0, 794.0, 425.0, 19.0 ],
									"numoutlets" : 3,
									"id" : "obj-14",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"presentation_rect" : [ 345.0, 118.0, 18.0, 18.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 196.0, 794.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"presentation" : 1,
									"id" : "obj-15",
									"inactivecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "saturation/active[1]",
									"text" : "jcom.parameter IR.2/reverse @type msg_toggle @description \"Reverse IR on/off\"",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 231.0, 768.0, 425.0, 19.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"presentation_rect" : [ 345.0, 95.0, 18.0, 18.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 197.0, 768.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"presentation" : 1,
									"id" : "obj-6",
									"inactivecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "dropfile",
									"numinlets" : 1,
									"types" : [ "sound" ],
									"patching_rect" : [ 340.0, 160.0, 64.0, 16.0 ],
									"numoutlets" : 2,
									"border" : 0.0,
									"id" : "obj-96",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "dropfile",
									"numinlets" : 1,
									"types" : [ "sound" ],
									"patching_rect" : [ 304.0, 250.0, 72.0, 16.0 ],
									"numoutlets" : 2,
									"border" : 0.0,
									"id" : "obj-100",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"varname" : "Open_button[6]",
									"fontname" : "Verdana",
									"presentation_rect" : [ 182.0, 118.0, 64.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
									"patching_rect" : [ 56.0, 165.0, 50.0, 18.0 ],
									"numoutlets" : 3,
									"presentation" : 1,
									"id" : "obj-103",
									"rounded" : 15.0,
									"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
									"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
									"text" : "Open",
									"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
									"outlettype" : [ "", "", "int" ],
									"texton" : "DSP",
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"varname" : "Open_button[7]",
									"fontname" : "Verdana",
									"presentation_rect" : [ 182.0, 142.0, 63.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
									"patching_rect" : [ 55.0, 266.0, 50.0, 18.0 ],
									"numoutlets" : 3,
									"presentation" : 1,
									"id" : "obj-110",
									"rounded" : 15.0,
									"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
									"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
									"text" : "Open",
									"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
									"outlettype" : [ "", "", "int" ],
									"texton" : "DSP",
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[9]",
									"text" : "jcom.message IR.4/open @type msg_generic @repetitions/allow 1 @description \"Open impulse response specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 54.0, 293.0, 592.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-111",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 304.0, 271.0, 129.0, 19.0 ],
									"numoutlets" : 2,
									"id" : "obj-112",
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 340.0, 182.0, 129.0, 19.0 ],
									"numoutlets" : 2,
									"id" : "obj-115",
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[10]",
									"text" : "jcom.message IR.3/open @type msg_generic @repetitions/allow 1 @description \"Open impulse response specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 56.0, 204.0, 592.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-116",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"varname" : "Open_button[4]",
									"fontname" : "Verdana",
									"presentation_rect" : [ 247.0, 142.0, 38.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
									"patching_rect" : [ 96.0, 425.0, 40.0, 18.0 ],
									"numoutlets" : 3,
									"presentation" : 1,
									"id" : "obj-73",
									"rounded" : 15.0,
									"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
									"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
									"text" : "buffer",
									"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
									"outlettype" : [ "", "", "int" ],
									"texton" : "DSP",
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[7]",
									"text" : "jcom.message IR.4/buffer @type msg_generic @repetitions/allow 1 @description \"Open buffer window, displaying impulse response\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 96.0, 451.0, 591.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-76",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"varname" : "Open_button[5]",
									"fontname" : "Verdana",
									"presentation_rect" : [ 247.0, 118.0, 38.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
									"patching_rect" : [ 98.0, 357.0, 40.0, 18.0 ],
									"numoutlets" : 3,
									"presentation" : 1,
									"id" : "obj-85",
									"rounded" : 15.0,
									"bgoveroncolor" : [ 1.0, 0.239216, 0.239216, 0.490196 ],
									"textcolor" : [ 0.14902, 0.14902, 0.14902, 0.466667 ],
									"text" : "buffer",
									"bordercolor" : [ 0.6, 0.6, 0.6, 0.396078 ],
									"outlettype" : [ "", "", "int" ],
									"texton" : "DSP",
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"borderoncolor" : [ 0.4, 0.4, 0.4, 0.423529 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[8]",
									"text" : "jcom.message IR.3/buffer @type msg_generic @repetitions/allow 1 @description \"Open buffer window, displaying impulse response\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 98.0, 383.0, 591.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-90",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Arial",
									"ignoreclick" : 1,
									"presentation_rect" : [ 175.0, 27.0, 27.996094, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 596.0, 657.0, 34.0, 20.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-102",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /maxlength /latency",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 519.0, 623.0, 192.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-89",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /info",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 520.0, 591.0, 108.0, 19.0 ],
									"numoutlets" : 2,
									"id" : "obj-87",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"ignoreclick" : 1,
									"presentation_rect" : [ 302.0, 28.0, 30.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 518.0, 659.0, 31.0, 20.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-55",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Max IR length          s",
									"linecount" : 2,
									"fontname" : "Verdana",
									"presentation_rect" : [ 227.0, 29.0, 126.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 472.0, 683.0, 114.0, 31.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 255 255 255 255",
									"fontname" : "Arial",
									"numinlets" : 4,
									"fontsize" : 12.0,
									"patching_rect" : [ 14.0, 809.0, 143.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend setsymbol",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1053.0, 177.0, 112.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 1052.0, 153.0, 57.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "SegmentSize",
									"fontname" : "Verdana",
									"presentation_rect" : [ 7.0, 28.0, 85.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 867.0, 133.0, 74.0, 19.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "reverse",
									"linecount" : 2,
									"fontname" : "Verdana",
									"presentation_rect" : [ 327.0, 54.0, 49.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 162.0, 740.0, 30.0, 31.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Number of IR channels to process",
									"linecount" : 5,
									"fontname" : "Verdana",
									"presentation_rect" : [ 7.0, 7.0, 182.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 855.0, 50.0, 56.0, 67.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"presentation_rect" : [ 189.0, 7.0, 21.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 910.0, 50.0, 35.0, 19.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-28",
									"minimum" : 1,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"maximum" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[3]",
									"text" : "jcom.parameter channels @repetitions/allow 1 @type msg_int @range/bounds 1 4 @range/clipmode both @priority 4 @description \"Number of active processing channels\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 956.0, 45.0, 599.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-31",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "SegmentSize",
									"fontname" : "Verdana",
									"presentation_rect" : [ 79.0, 27.0, 39.0, 19.0 ],
									"items" : [ 256, ",", 512, ",", 1024, ",", 2048, ",", 4096 ],
									"numinlets" : 1,
									"arrow" : 0,
									"fontsize" : 10.0,
									"types" : [  ],
									"patching_rect" : [ 942.0, 132.0, 83.0, 19.0 ],
									"numoutlets" : 3,
									"presentation" : 1,
									"id" : "obj-9",
									"outlettype" : [ "int", "", "" ],
									"labelclick" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "module_in[1]",
									"text" : "jcom.parameter SegmentSize @repetitions/allow 1 @type msg_int",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 1051.0, 129.0, 347.0, 19.0 ],
									"numoutlets" : 3,
									"id" : "obj-86",
									"outlettype" : [ "", "", "" ],
									"color" : [ 0.8, 0.839216, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "saturation/active",
									"text" : "jcom.parameter IR.1/reverse @type msg_toggle @description \"Reverse IR on/off\"",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 231.0, 741.0, 425.0, 19.0 ],
									"numoutlets" : 3,
									"id" : "obj-47",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"presentation_rect" : [ 345.0, 73.0, 18.0, 18.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 197.0, 741.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"presentation" : 1,
									"id" : "obj-93",
									"inactivecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window size 100 100 1100 800, window exec",
									"linecount" : 4,
									"presentation_linecount" : 3,
									"fontname" : "Verdana",
									"presentation_rect" : [ 334.961182, 0.758301, 127.0, 40.0 ],
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 110.578369, 627.328125, 103.0, 52.0 ],
									"numoutlets" : 1,
									"presentation" : 1,
									"id" : "obj-26",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 200 200 680 380, window flags nogrow, window exec, savewindow 1",
									"linecount" : 2,
									"fontname" : "Verdana",
									"presentation_rect" : [ 465.825439, 5.780228, 418.0, 16.0 ],
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 40.512878, 592.29541, 355.0, 28.0 ],
									"numoutlets" : 1,
									"presentation" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p front",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 19.0, 560.0, 42.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "front" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 840.0, 548.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 840.0, 548.0, 600.0, 426.0 ],
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
													"text" : "jcom.oscroute /panel/open",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 50.0, 50.0, 144.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t front",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 50.0, 92.0, 40.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "front" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 114.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-5",
													"comment" : ""
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 19.032715, 735.327393, 64.0, 18.0 ],
									"numoutlets" : 2,
									"id" : "obj-34",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"patching_rect" : [ 19.0, 474.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "latency          ms",
									"fontname" : "Verdana",
									"presentation_rect" : [ 123.0, 28.0, 99.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 575.0, 683.0, 100.0, 19.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-58"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [ 983.5, 159.0, 1040.0, 159.0, 1040.0, 115.0, 1060.5, 115.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-118", 1 ],
									"destination" : [ "obj-107", 1 ],
									"hidden" : 0,
									"midpoints" : [ 1215.0, 696.0, 1352.0, 696.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.0, 498.0, 909.5, 498.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-118", 1 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-99", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 1 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 2 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 3 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 1 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 0,
									"midpoints" : [ 936.5, 593.0, 1152.0, 593.0, 1152.0, 698.0, 1119.0, 698.0, 1119.0, 755.0, 1112.5, 755.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 0 ],
									"destination" : [ "obj-109", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 1 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 2 ],
									"destination" : [ "obj-105", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 3 ],
									"destination" : [ "obj-106", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-107", 0 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 1 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [ 936.5, 593.0, 1297.5, 593.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-118", 0 ],
									"destination" : [ "obj-92", 1 ],
									"hidden" : 0,
									"midpoints" : [ 1201.5, 698.0, 954.5, 698.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-118", 1 ],
									"destination" : [ "obj-101", 1 ],
									"hidden" : 0,
									"midpoints" : [ 1215.0, 698.0, 1167.0, 698.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 2 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 0,
									"midpoints" : [ 963.5, 593.0, 1201.5, 593.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1058.5, 698.0, 1338.5, 698.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-101", 0 ],
									"hidden" : 0,
									"midpoints" : [ 984.5, 698.0, 1153.5, 698.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-92", 0 ],
									"hidden" : 0,
									"midpoints" : [ 910.5, 707.0, 734.5, 707.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-110", 0 ],
									"destination" : [ "obj-111", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-111", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 1 ],
									"destination" : [ "obj-102", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [ 120.078369, 705.0, 28.532715, 705.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.0, 546.0, 529.5, 546.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 1 ],
									"destination" : [ "obj-37", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-37", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 2 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 3 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-50", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 979.5, 320.0, 954.0, 320.0, 954.0, 238.0, 979.5, 238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 973.5, 444.0, 948.0, 444.0, 948.0, 362.0, 973.5, 362.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/SegmentSize 2048",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 329.0, 386.0, 184.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-41",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- signal outputs",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 207.0, 468.0, 118.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 4",
					"fontname" : "Verdana",
					"numinlets" : 4,
					"fontsize" : 10.0,
					"patching_rect" : [ 79.0, 433.0, 141.0, 19.0 ],
					"numoutlets" : 5,
					"id" : "obj-7",
					"outlettype" : [ "signal", "signal", "signal", "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 4",
					"fontname" : "Verdana",
					"numinlets" : 4,
					"fontsize" : 10.0,
					"patching_rect" : [ 79.0, 358.0, 232.5, 19.0 ],
					"numoutlets" : 6,
					"id" : "obj-8",
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 79.0, 326.0, 24.0, 24.0 ],
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"comment" : "signal~ 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 79.0, 464.0, 24.0, 24.0 ],
					"numoutlets" : 0,
					"id" : "obj-9",
					"comment" : "signal~ 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 150.0, 326.0, 24.0, 24.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"comment" : "signal~ 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.tconvolution~",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"fontsize" : 10.0,
					"patching_rect" : [ 64.0, 399.0, 145.0, 19.0 ],
					"numoutlets" : 5,
					"id" : "obj-11",
					"outlettype" : [ "", "signal", "signal", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 110.0, 464.0, 24.0, 24.0 ],
					"numoutlets" : 0,
					"id" : "obj-46",
					"comment" : "signal~ 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p notes_&_bugs",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 14.0,
					"patching_rect" : [ 623.0, 13.0, 113.0, 23.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 490.0, 315.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 490.0, 315.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "clear buffer avant load ? car si IR plus longue et audio ON, on entend le buffer d'avant",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 20.0, 223.0, 192.0, 43.0 ],
									"numoutlets" : 0,
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1% par rev en 256 64 2048",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 22.0, 193.0, 192.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "check vector size",
									"fontname" : "Verdana",
									"presentation_rect" : [ 525.0, 180.0, 383.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 21.0, 153.0, 150.0, 19.0 ],
									"numoutlets" : 0,
									"presentation" : 1,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "here you can type any note you want, that will help understand your patch and its current usability",
									"linecount" : 2,
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 20.0, 21.0, 340.0, 34.0 ],
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p read_me_for_programming_details",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 14.0,
					"patching_rect" : [ 371.0, 13.0, 240.0, 23.0 ],
					"numoutlets" : 0,
					"id" : "obj-44",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 519.0, 433.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 519.0, 433.0 ],
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
									"maxclass" : "comment",
									"text" : "for jcom.return only",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 11.0, 364.0, 113.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@enable",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 384.0, 77.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1/0 : enables the send of data (on by default)",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 146.0, 384.0, 302.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/scheduler",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 254.0, 105.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "scheduler/queue...",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 146.0, 254.0, 105.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@description",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 334.0, 75.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@repetitions/allow",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 274.0, 105.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-46"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/function",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 234.0, 92.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/clipmode",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 314.0, 101.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-48"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/bounds",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 294.0, 91.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@type",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 214.0, 44.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-50"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 139.0, 370.0, 43.0 ],
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.return:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 11.0, 119.0, 380.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 79.0, 342.0, 31.0 ],
									"numoutlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.message:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 11.0, 59.0, 366.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 36.0, 29.0, 402.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.parameter:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 11.0, 9.0, 293.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for html autodoc of module",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 146.0, 334.0, 149.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 146.0, 274.0, 282.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none/linear/cosine/power/tanh/lowpass...",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 146.0, 234.0, 221.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none, low, high, both (default)",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 146.0, 314.0, 166.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "minimum and maximum values for this parameter/message",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 146.0, 294.0, 314.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "generic (default), msg_int, msg_float, menu, toggle",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 146.0, 214.0, 273.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Attributes for jcom.parameter and jcom.message:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 11.0, 194.0, 295.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-51"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.message IR.1/open @type msg_generic @repetitions/allow 1 @description \"Open impulse response specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 611.0, 138.0, 592.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-29",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preset/store 1 default, preset/write",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 51.0, 143.0, 189.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 242.0, 163.0, 40.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"4 channels convolution based on tconvolution.mxo\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 16.0, 193.0, 503.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-37",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 143.0, 22.0, 22.0 ],
					"numoutlets" : 1,
					"id" : "obj-38",
					"outlettype" : [ "" ],
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 233.0, 22.0, 22.0 ],
					"numoutlets" : 0,
					"id" : "obj-39",
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 76.0, 163.0, 159.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_meters" : 1,
					"has_mute" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_bypass" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 2.0, 300.0, 70.0 ],
					"prefix" : "audio",
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-16",
					"has_mix" : 1,
					"outlettype" : [ "" ],
					"has_panel" : 1,
					"has_gain" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- signal inputs ->",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 138.0, 307.0, 118.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 4 ],
					"destination" : [ "obj-42", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-42", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-42", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 73.5, 505.0, 243.0, 505.0, 243.0, 385.0, 258.5, 385.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 3 ],
					"destination" : [ "obj-11", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 4 ],
					"destination" : [ "obj-7", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-11", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-11", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 4 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 4 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 2 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 1 ],
					"destination" : [ "obj-101", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 1 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 1 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-99", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 3 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 60.5, 186.0, 25.5, 186.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 85.5, 186.0, 25.5, 186.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 251.5, 180.0, 25.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 4 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-8", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-8", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 594.0, 647.0, 594.0, 560.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 595.0, 538.0, 586.0, 433.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
