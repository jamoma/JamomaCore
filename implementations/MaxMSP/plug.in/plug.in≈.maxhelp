{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 29.0, 69.0, 638.0, 592.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 29.0, 69.0, 638.0, 592.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 13.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica Neue Light",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 1,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Audio objects in the chain that follow plug.in≈ will adapt to the number of channels they are passed.",
					"linecount" : 2,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 130.0, 525.0, 294.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-43",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "By using SmartSignals, the plug-in can adapt to various channel configurations automatically.",
					"linecount" : 2,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 65.0, 440.0, 370.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-42",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dcblocker≈",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "audio.connect", "" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 520.0, 74.0, 22.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-41",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out≈",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "audio.connect", "" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 550.0, 36.0, 22.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-40",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output from plug.in≈ is a SmartSignal containing the number of audio channels provided by the plug-in host.",
					"linecount" : 2,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 65.0, 400.0, 370.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-39",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The pack≈ object creates a SmartSignal containing N channels of audio.  The number of channels is defined by the optional argument (default 2, for stereo)",
					"linecount" : 2,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 110.0, 200.0, 451.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-37",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "plug.in≈",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "audio.connect", "" ],
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 18.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 30.0, 73.0, 28.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-29",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use the abbreviated name of the object, in≈, for convenience.",
					"linecount" : 2,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 95.0, 330.0, 199.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-24",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in≈",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "audio.connect", "" ],
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 18.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 550.0, 30.0, 34.0, 28.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-21",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "drag audio files from the file browser onto sfplay~",
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 125.0, 165.0, 296.0, 22.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-7",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input to plug.in≈ is a SmartSignal, which is passed to the object's output in Max, but ignored when the plug-in is built.",
					"linecount" : 2,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 60.0, 270.0, 360.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-6",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in≈",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "audio.connect", "" ],
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 18.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 335.0, 34.0, 28.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-23",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"background" : 0,
					"outlettype" : [ "int" ],
					"ignoreclick" : 0,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 80.0, 105.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"background" : 0,
					"outlettype" : [ "int" ],
					"ignoreclick" : 0,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 105.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loop $1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 80.0, 135.0, 53.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-18",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 4",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "signal", "signal", "signal", "signal", "bang" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 165.0, 73.0, 22.0 ],
					"numoutlets" : 5,
					"presentation" : 0,
					"id" : "obj-2",
					"fontname" : "Helvetica Neue Light",
					"save" : [ "#N", "sfplay~", "", 4, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack≈ 4",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "audio.connect", "" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 4,
					"patching_rect" : [ 50.0, 210.0, 59.5, 22.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-1",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "plug.helpheader.maxpat",
					"background" : 0,
					"offset" : [ 0.0, 0.0 ],
					"clickthrough" : 0,
					"args" : [ "plug.in≈", "provide audio input from the plug-in host environment" ],
					"ignoreclick" : 0,
					"bgmode" : 0,
					"enablehscroll" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"embed" : 0,
					"lockeddragscroll" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 0,
					"border" : 0,
					"patching_rect" : [ 5.0, 5.0, 595.0, 80.0 ],
					"enablevscroll" : 0,
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-34"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 3 ],
					"destination" : [ "obj-1", 3 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 89.5, 160.0, 59.5, 160.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
