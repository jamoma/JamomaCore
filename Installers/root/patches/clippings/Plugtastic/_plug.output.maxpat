{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 29.0, 69.0, 643.0, 730.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 29.0, 69.0, 643.0, 730.0 ],
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
					"maxclass" : "newobj",
					"text" : "loadbang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "bang" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 85.0, 115.0, 63.0, 22.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-35",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "bang" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 105.0, 205.0, 63.0, 22.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-34",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Many hosts categorize plug-ins by their given manufacurer name",
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
					"patching_rect" : [ 305.0, 220.0, 204.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-27",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Each plug-in should be uniquely identified by a combination of the following 4-character codes",
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
					"patching_rect" : [ 265.0, 145.0, 279.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-19",
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
					"patching_rect" : [ 215.0, 60.0, 322.0, 38.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-13",
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
					"patching_rect" : [ 105.0, 60.0, 106.0, 34.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-14",
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
					"patching_rect" : [ 0.0, 215.0, 45.0, 45.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.gain~",
					"varname" : "live.gain~",
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
					"patching_rect" : [ 0.0, 70.0, 61.0, 135.0 ],
					"coldcolor" : [ 0.047059, 0.972549, 0.392157, 1.0 ],
					"warmcolor" : [ 0.764706, 0.972549, 0.392157, 1.0 ],
					"numoutlets" : 5,
					"trioncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
					"overloadcolor" : [ 1.0, 0.039216, 0.039216, 1.0 ],
					"presentation" : 0,
					"id" : "obj-11",
					"fontname" : "Arial",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_longname" : "live.gain~",
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
					"patching_rect" : [ 0.0, 40.0, 60.0, 22.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"id" : "obj-10",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- multichannel output to the plug-in host",
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
					"patching_rect" : [ 80.0, 15.0, 247.0, 22.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-9",
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
					"patching_rect" : [ 0.0, 15.0, 36.0, 22.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-5",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pluginIdCode T3mp",
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
					"patching_rect" : [ 105.0, 165.0, 121.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-25",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "manufacturerCode Acm3",
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
					"patching_rect" : [ 105.0, 140.0, 152.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-26",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "manufacturer \"My Cool Plug-ins\"",
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
					"patching_rect" : [ 105.0, 230.0, 193.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-29",
					"fontname" : "Helvetica Neue Light"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 114.5, 257.0, 71.0, 257.0, 71.0, 11.0, 9.5, 11.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 114.5, 162.0, 75.5, 162.0, 75.5, 7.0, 9.5, 7.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 114.5, 189.0, 73.5, 189.0, 73.5, 9.0, 9.5, 9.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 114.5, 100.0, 77.0, 100.0, 77.0, 5.0, 9.5, 5.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 20.0, 210.0, 35.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 30.0, 65.5, 51.5, 65.5 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11" : [ "live.gain~", "live.gain~", 0 ]
		}

	}

}
