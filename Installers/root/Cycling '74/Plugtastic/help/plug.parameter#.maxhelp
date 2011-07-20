{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 29.0, 69.0, 781.0, 595.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 29.0, 69.0, 781.0, 595.0 ],
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
					"text" : "parameter# frequency @style hertz @range 20 8000 @default 1000.",
					"linecount" : 5,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "graph.connect", "" ],
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 18.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 140.0, 142.0, 115.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-1",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "In this example the key called 'name', which is the name of the parameter (resonance), is replaced with a different name (q) -- the one we want to use to control the attribute of the audio object.",
					"linecount" : 5,
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
					"patching_rect" : [ 490.0, 350.0, 280.0, 85.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-17",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append# @key name @value q",
					"linecount" : 3,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "graph.connect", "" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 390.0, 78.0, 54.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-16",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "parameter# resonance @range 0. 4. @default 1.",
					"linecount" : 4,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "graph.connect", "" ],
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 18.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 290.0, 114.0, 94.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-15",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The append# object provides a way to modify the dictionary before sending it to the audio object.",
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
					"patching_rect" : [ 490.0, 290.0, 280.0, 54.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-14",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The dictionary produced by plug.parameter# includes both the parameter value and the parameter name.  Thus, the name of the parameter is also the name of the attribute it will try and control in the connected audio object.",
					"linecount" : 5,
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
					"patching_rect" : [ 200.0, 365.0, 280.0, 85.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-13",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"options for the @style attribute\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 490.0, 230.0, 201.0, 22.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-11",
					"fontname" : "Helvetica Neue Light",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 492.0, 250.0, 298.0, 123.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 492.0, 250.0, 298.0, 123.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "available styles are:\n+ generic\n+ boolean\n+ hertz\n+ decibels\n+ milliseconds",
									"linecount" : 6,
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
									"patching_rect" : [ 20.0, 10.0, 150.0, 101.0 ],
									"numoutlets" : 0,
									"presentation" : 0,
									"id" : "obj-2",
									"fontname" : "Helvetica Neue Light"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Helvetica Neue Light",
						"default_fontsize" : 13.0,
						"fontname" : "Helvetica Neue Light"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Additional attributes allow you to refine the properties of the parameter.  The @style attribute, for example, will give the host environment some clues about how to generate an intelligent interface for a parameter.",
					"linecount" : 5,
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
					"patching_rect" : [ 490.0, 140.0, 282.0, 85.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-10",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The plug.parameter# object defines a parameter that can be automated and contolled by the host environment for the plug-in.",
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
					"patching_rect" : [ 200.0, 140.0, 282.0, 54.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-8",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The first argument is the name of the parameter, which defines what the parameter will be named in the host environment.",
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
					"patching_rect" : [ 200.0, 195.0, 282.0, 54.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-7",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The plug.parameter# object produces a dictionary output.  A dictionary is a collection of information where specific pieces of information (values) are associated with a 'key'.",
					"linecount" : 4,
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
					"patching_rect" : [ 200.0, 290.0, 280.0, 69.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-4",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Send audio SmartSignal output to the host environment",
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
					"patching_rect" : [ 60.0, 550.0, 322.0, 22.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-3",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Receive audio SmartSignal input from the host environment",
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
					"patching_rect" : [ 55.0, 105.0, 342.0, 22.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-2",
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
					"patching_rect" : [ 20.0, 105.0, 32.5, 22.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-5",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Process the multi-channel SmartSignals",
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
					"patching_rect" : [ 65.0, 520.0, 233.0, 22.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-43",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "filter≈",
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
					"patching_rect" : [ 20.0, 520.0, 41.0, 22.0 ],
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
					"patching_rect" : [ 20.0, 550.0, 36.0, 22.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-40",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "plug.parameter#",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "graph.connect", "" ],
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 18.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 455.0, 15.0, 140.0, 28.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-29",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "parameter#",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "graph.connect", "" ],
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 18.0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 490.0, 45.0, 105.0, 28.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"id" : "obj-21",
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
					"args" : [ "plug.parameter#", "receive automation from the plug-in host environment" ],
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 59.5, 262.0, 29.5, 262.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 59.5, 457.0, 29.5, 457.0 ]
				}

			}
, 			{
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
