{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 29.0, 69.0, 674.0, 674.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 29.0, 69.0, 674.0, 674.0 ],
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
					"text" : "In Max, it passes its input through, which in this case is 2 channels of audio packed onto the SmartSignal.",
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
					"patching_rect" : [ 55.0, 235.0, 604.0, 22.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-33",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Build an AudioUnit plug-in with the name of the patcher into the ~/Library/Audio/Plug-ins/Components folder.",
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
					"patching_rect" : [ 155.0, 335.0, 322.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-31",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "build.au",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontsize" : 24.0,
					"gradient" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 0.501961 ],
					"numinlets" : 2,
					"patching_rect" : [ 40.0, 335.0, 106.0, 34.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-32",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The jcom.plug.out≈ object mirrors its SmartSignal input to its output so that you can audition the plug-in during development in Max.",
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
					"patching_rect" : [ 90.0, 555.0, 377.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-30",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"local" : 0,
					"background" : 0,
					"ignoreclick" : 0,
					"offgradcolor1" : [ 0.87, 0.87, 0.87, 1.0 ],
					"hidden" : 0,
					"ongradcolor1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.51, 0.51, 0.51, 1.0 ],
					"ongradcolor2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"numinlets" : 2,
					"offgradcolor2" : [ 0.7, 0.7, 0.73, 1.0 ],
					"patching_rect" : [ 20.0, 615.0, 45.0, 45.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.gain~",
					"varname" : "live.gain~[1]",
					"parameter_enable" : 1,
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
					"textcolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
					"relative" : 0,
					"background" : 0,
					"inactivecoldcolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
					"interval" : 20,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"hotcolor" : [ 1.0, 0.756863, 0.039216, 1.0 ],
					"orientation" : 0,
					"clip_size" : 0,
					"modulationcolor" : [ 0.94902, 0.376471, 0.0, 1.0 ],
					"showname" : 1,
					"tribordercolor" : [ 0.27451, 0.32549, 0.4, 1.0 ],
					"ignoreclick" : 0,
					"display_range" : [ -70.0, 6.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"shownumber" : 1,
					"tricolor" : [ 0.572549, 0.615686, 0.658824, 1.0 ],
					"inactivewarmcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"slidercolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
					"interp" : 10.0,
					"numinlets" : 2,
					"metering" : 1,
					"patching_rect" : [ 20.0, 535.0, 61.0, 69.0 ],
					"coldcolor" : [ 0.047059, 0.972549, 0.392157, 1.0 ],
					"warmcolor" : [ 0.764706, 0.972549, 0.392157, 1.0 ],
					"numoutlets" : 5,
					"trioncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
					"overloadcolor" : [ 1.0, 0.039216, 0.039216, 1.0 ],
					"presentation" : 0,
					"id" : "obj-23",
					"fontname" : "Arial",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_longname" : "live.gain~[1]",
							"parameter_units" : "",
							"parameter_linknames" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_order" : 0,
							"parameter_steps" : 0,
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 4,
							"parameter_initial" : [ 0.0 ],
							"parameter_mmax" : 6.0,
							"parameter_initial_enable" : 0,
							"parameter_invisible" : 0,
							"parameter_mmin" : -70.0,
							"parameter_annotation_name" : "",
							"parameter_type" : 0,
							"parameter_modmax" : 127.0,
							"parameter_shortname" : "live.gain~",
							"parameter_modmin" : 0.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack≈",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "signal", "signal", "" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 505.0, 60.0, 22.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"id" : "obj-28",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The other attributes are helpful, but not absolutely neccessary.",
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
					"patching_rect" : [ 305.0, 440.0, 187.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-27",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Each plug-in must be uniquely identified by a combination of the @manufacturerCode and @pluginIdCode 4-character codes.",
					"linecount" : 3,
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
					"patching_rect" : [ 305.0, 385.0, 267.0, 54.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-19",
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
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 215.0, 32.5, 22.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-5",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "You can use the abbreviated name of the object, out≈, for convenience.",
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
					"patching_rect" : [ 305.0, 480.0, 283.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-3",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out≈ @manufacturer \"My Plug-ins\" @manufacturerCode Acm3 @pluginIdCode H3lp @pluginVersion 1.0.1",
					"linecount" : 4,
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
					"patching_rect" : [ 20.0, 385.0, 282.0, 94.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-4",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Audio objects in the chain that follow jcom.plug.in≈ will adapt to the number of channels they are passed.",
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
					"patching_rect" : [ 100.0, 280.0, 294.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-43",
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
					"patching_rect" : [ 20.0, 280.0, 74.0, 22.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-41",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output from in≈ is a SmartSignal containing the number of audio channels provided by the plug-in host.",
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
					"patching_rect" : [ 55.0, 215.0, 589.0, 22.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-39",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The pack≈ object creates a SmartSignal containing 2 channels of audio by default.",
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
					"patching_rect" : [ 70.0, 185.0, 471.0, 22.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-37",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.plug.out≈",
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
					"patching_rect" : [ 450.0, 30.0, 85.0, 28.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-29",
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
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 18.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 540.0, 30.0, 46.0, 28.0 ],
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
					"patching_rect" : [ 95.0, 155.0, 289.0, 22.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-7",
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
					"patching_rect" : [ 50.0, 95.0, 25.0, 25.0 ],
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
					"patching_rect" : [ 20.0, 95.0, 25.0, 25.0 ],
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
					"patching_rect" : [ 50.0, 125.0, 53.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-18",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "signal", "signal", "bang" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 20.0, 155.0, 72.0, 22.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"id" : "obj-2",
					"fontname" : "Helvetica Neue Light",
					"save" : [ "#N", "sfplay~", "", 2, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack≈",
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
					"numinlets" : 2,
					"patching_rect" : [ 20.0, 185.0, 46.0, 22.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-1",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jcom.plug.helpheader.maxpat",
					"background" : 0,
					"offset" : [ 0.0, 0.0 ],
					"clickthrough" : 0,
					"args" : [ "jcom.plug.out≈", "provide audio output from the plug-in to the host environment" ],
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 49.5, 375.0, 29.5, 375.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 50.0, 530.5, 71.5, 530.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 40.0, 609.0, 55.5, 609.0 ]
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 59.5, 150.0, 29.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ],
		"parameters" : 		{
			"obj-23" : [ "live.gain~[1]", "live.gain~", 0 ]
		}

	}

}
