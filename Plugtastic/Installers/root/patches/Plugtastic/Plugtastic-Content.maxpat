{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 55.0, 44.0, 1250.0, 828.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 55.0, 44.0, 1250.0, 828.0 ],
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
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-22",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 760.0, 190.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"presentation" : 0,
					"id" : "obj-2",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "bang", "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 745.0, 155.0, 37.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p invert",
					"presentation" : 0,
					"id" : "obj-173",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 635.0, 660.0, 52.0, 22.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 480.0, 247.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 480.0, 247.0, 640.0, 480.0 ],
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
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad1 0.858824 0.858824 0.858824 1.",
									"id" : "obj-8",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 390.0, 215.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad2 0.929412 0.929412 0.929412 1.",
									"id" : "obj-9",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 390.0, 190.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 385.0, 145.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 350.0, 145.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad2 0.858824 0.858824 0.858824 1.",
									"id" : "obj-170",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 135.0, 215.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad1 0.929412 0.929412 0.929412 1.",
									"id" : "obj-168",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 135.0, 190.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"patching_rect" : [ 385.0, 105.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numoutlets" : 0,
									"numinlets" : 1,
									"patching_rect" : [ 350.0, 285.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"patching_rect" : [ 350.0, 105.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-168", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-170", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-168", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-170", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Helvetica Neue Light",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 13.0,
						"default_fontname" : "Helvetica Neue Light",
						"default_fontsize" : 13.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p invert",
					"presentation" : 0,
					"id" : "obj-172",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 945.0, 660.0, 52.0, 22.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 480.0, 247.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 480.0, 247.0, 640.0, 480.0 ],
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
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad1 0.858824 0.858824 0.858824 1.",
									"id" : "obj-8",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 390.0, 215.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad2 0.929412 0.929412 0.929412 1.",
									"id" : "obj-9",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 390.0, 190.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 385.0, 145.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 350.0, 145.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad2 0.858824 0.858824 0.858824 1.",
									"id" : "obj-170",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 135.0, 215.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad1 0.929412 0.929412 0.929412 1.",
									"id" : "obj-168",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 135.0, 190.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"patching_rect" : [ 385.0, 105.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numoutlets" : 0,
									"numinlets" : 1,
									"patching_rect" : [ 350.0, 285.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"patching_rect" : [ 350.0, 105.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-168", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-170", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-168", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-170", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Helvetica Neue Light",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 13.0,
						"default_fontname" : "Helvetica Neue Light",
						"default_fontsize" : 13.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p invert",
					"presentation" : 0,
					"id" : "obj-171",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 950.0, 515.0, 52.0, 22.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 480.0, 247.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 480.0, 247.0, 640.0, 480.0 ],
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
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad1 0.858824 0.858824 0.858824 1.",
									"id" : "obj-8",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 390.0, 215.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad2 0.929412 0.929412 0.929412 1.",
									"id" : "obj-9",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 390.0, 190.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 385.0, 145.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 350.0, 145.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad2 0.858824 0.858824 0.858824 1.",
									"id" : "obj-170",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 135.0, 215.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad1 0.929412 0.929412 0.929412 1.",
									"id" : "obj-168",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 135.0, 190.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"patching_rect" : [ 385.0, 105.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numoutlets" : 0,
									"numinlets" : 1,
									"patching_rect" : [ 350.0, 285.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"patching_rect" : [ 350.0, 105.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-168", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-170", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-168", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-170", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Helvetica Neue Light",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 13.0,
						"default_fontname" : "Helvetica Neue Light",
						"default_fontsize" : 13.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p invert",
					"presentation" : 0,
					"id" : "obj-164",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 625.0, 515.0, 52.0, 22.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 480.0, 247.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 480.0, 247.0, 640.0, 480.0 ],
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
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad1 0.858824 0.858824 0.858824 1.",
									"id" : "obj-8",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 390.0, 215.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad2 0.929412 0.929412 0.929412 1.",
									"id" : "obj-9",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 390.0, 190.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 385.0, 145.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 350.0, 145.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad2 0.858824 0.858824 0.858824 1.",
									"id" : "obj-170",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 135.0, 215.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grad1 0.929412 0.929412 0.929412 1.",
									"id" : "obj-168",
									"fontname" : "Helvetica Neue Light",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 13.0,
									"numinlets" : 2,
									"patching_rect" : [ 135.0, 190.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"patching_rect" : [ 385.0, 105.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numoutlets" : 0,
									"numinlets" : 1,
									"patching_rect" : [ 350.0, 285.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"patching_rect" : [ 350.0, 105.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-168", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-170", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-168", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-170", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Helvetica Neue Light",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 13.0,
						"default_fontname" : "Helvetica Neue Light",
						"default_fontsize" : 13.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation" : 0,
					"id" : "obj-159",
					"background" : 0,
					"numoutlets" : 4,
					"hltcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"dragtrack" : 0,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"ignoreclick" : 0,
					"handoffdelay" : 250,
					"hidden" : 0,
					"stay" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hilite" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 325.0, 645.0, 163.0, 20.0 ],
					"toggle" : 0,
					"handoff" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-160",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 945.0, 565.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax newfilebrowser @default_query \"Plugtastic Audio\"",
					"linecount" : 3,
					"presentation" : 0,
					"id" : "obj-161",
					"fontname" : "Verdana",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 10.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 945.0, 595.0, 255.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation" : 0,
					"id" : "obj-156",
					"background" : 0,
					"numoutlets" : 4,
					"hltcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"dragtrack" : 0,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"ignoreclick" : 0,
					"handoffdelay" : 250,
					"hidden" : 0,
					"stay" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hilite" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 325.0, 775.0, 163.0, 20.0 ],
					"toggle" : 0,
					"handoff" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-157",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 945.0, 695.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax newfilebrowser @default_query \"Plugtastic Tools\"",
					"linecount" : 3,
					"presentation" : 0,
					"id" : "obj-158",
					"fontname" : "Verdana",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 10.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 945.0, 725.0, 255.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation" : 0,
					"id" : "obj-153",
					"background" : 0,
					"numoutlets" : 4,
					"hltcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"dragtrack" : 0,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"ignoreclick" : 0,
					"handoffdelay" : 250,
					"hidden" : 0,
					"stay" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hilite" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 775.0, 163.0, 20.0 ],
					"toggle" : 0,
					"handoff" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-154",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 640.0, 695.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax newfilebrowser @default_query \"Plugtastic Control\"",
					"linecount" : 2,
					"presentation" : 0,
					"id" : "obj-155",
					"fontname" : "Verdana",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 10.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 640.0, 725.0, 296.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation" : 0,
					"id" : "obj-25",
					"background" : 0,
					"numoutlets" : 4,
					"hltcolor" : [ 0.475, 0.695, 1.0, 0.5 ],
					"dragtrack" : 0,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"ignoreclick" : 0,
					"handoffdelay" : 250,
					"hidden" : 0,
					"stay" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hilite" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 1555.0, 65.0, 66.0 ],
					"toggle" : 0,
					"handoff" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"presentation" : 0,
					"id" : "obj-9",
					"background" : 0,
					"numoutlets" : 0,
					"autofit" : 0,
					"ignoreclick" : 0,
					"xoffset" : 0.0,
					"hidden" : 0,
					"embed" : 0,
					"yoffset" : 0.0,
					"alpha" : 1.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 1555.0, 64.0, 64.0 ],
					"pic" : "74objects64.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Investigate the objects which provide access to your plug-in's host environment.",
					"linecount" : 3,
					"presentation" : 0,
					"id" : "obj-151",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 320.0, 715.0, 174.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tour the objects in Plugtastic for passing control data amongst objects using dictionaries.",
					"linecount" : 3,
					"presentation" : 0,
					"id" : "obj-150",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 65.0, 715.0, 191.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Discover the objects in Plugtastic for working with multichannel SmartSignals.",
					"linecount" : 3,
					"presentation" : 0,
					"id" : "obj-149",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 320.0, 585.0, 173.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Explore all of Plugtastic's objects, clippings, help patchers and examples.",
					"linecount" : 3,
					"presentation" : 0,
					"id" : "obj-148",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 80.0, 585.0, 157.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Plugtastic Tools",
					"presentation" : 0,
					"id" : "obj-145",
					"fontname" : "Lucida Grande",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 12.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 360.0, 775.0, 103.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-146",
					"shape" : 0,
					"rounded" : 17,
					"background" : 0,
					"numoutlets" : 0,
					"shadow" : 0,
					"ignoreclick" : 1,
					"grad1" : [ 0.929412, 0.929412, 0.929412, 1.0 ],
					"angle" : 270.0,
					"bordercolor" : [ 0.627451, 0.627451, 0.627451, 1.0 ],
					"hidden" : 0,
					"bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"grad2" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"vertical_direction" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"mode" : 1,
					"border" : 1,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 327.0, 777.0, 160.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Plugtastic Control",
					"presentation" : 0,
					"id" : "obj-143",
					"fontname" : "Lucida Grande",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 12.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 95.0, 775.0, 114.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-144",
					"shape" : 0,
					"rounded" : 17,
					"background" : 0,
					"numoutlets" : 0,
					"shadow" : 0,
					"ignoreclick" : 1,
					"grad1" : [ 0.929412, 0.929412, 0.929412, 1.0 ],
					"angle" : 270.0,
					"bordercolor" : [ 0.627451, 0.627451, 0.627451, 1.0 ],
					"hidden" : 0,
					"bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"grad2" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"vertical_direction" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"mode" : 1,
					"border" : 1,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 72.0, 777.0, 160.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Plugtastic Audio",
					"presentation" : 0,
					"id" : "obj-141",
					"fontname" : "Lucida Grande",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 12.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 645.0, 105.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-142",
					"shape" : 0,
					"rounded" : 17,
					"background" : 0,
					"numoutlets" : 0,
					"shadow" : 0,
					"ignoreclick" : 1,
					"grad1" : [ 0.929412, 0.929412, 0.929412, 1.0 ],
					"angle" : 270.0,
					"bordercolor" : [ 0.627451, 0.627451, 0.627451, 1.0 ],
					"hidden" : 0,
					"bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"grad2" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"vertical_direction" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"mode" : 1,
					"border" : 1,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 327.0, 647.0, 160.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"presentation" : 0,
					"id" : "obj-127",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 1010.0, 2025.0, 32.5, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation" : 0,
					"format" : 0,
					"id" : "obj-121",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 2,
					"mouseup" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"cantchange" : 0,
					"triangle" : 1,
					"outlettype" : [ "int", "bang" ],
					"ignoreclick" : 0,
					"triscale" : 1.0,
					"fontface" : 0,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontsize" : 13.0,
					"minimum" : "<none>",
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"maximum" : "<none>",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"outputonclick" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 820.0, 2205.0, 50.0, 22.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 4",
					"presentation" : 0,
					"id" : "obj-119",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "bang", "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 870.0, 2205.0, 37.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 0 0 1000",
					"presentation" : 0,
					"id" : "obj-118",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 4,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "int", "", "", "int" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 5,
					"patching_rect" : [ 860.0, 2170.0, 107.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-113",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 740.0, 2200.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "routeurl",
					"text" : "route url",
					"presentation" : 0,
					"id" : "obj-111",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "", "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 740.0, 2175.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "textcolor 0.5 0.5 0.5 0.",
					"presentation" : 0,
					"id" : "obj-110",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 760.0, 1875.0, 138.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "textcolor 0.5 0.5 0.5 1.",
					"presentation" : 0,
					"id" : "obj-109",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 760.0, 1845.0, 138.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Please wait while the form loads...",
					"linecount" : 2,
					"presentation" : 0,
					"id" : "obj-107",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.5, 0.5, 0.5, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 405.0, 1835.0, 108.0, 38.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"presentation" : 0,
					"id" : "obj-77",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 610.0, 1820.0, 34.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script newobject jweb @patching_position 96 1896 @varname web, script size web 380 335, script hidden connect url 0 web 0, script hidden connect web 0 routeurl 0",
					"linecount" : 4,
					"presentation" : 0,
					"id" : "obj-56",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 905.0, 1765.0, 247.0, 67.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script delete web",
					"presentation" : 0,
					"id" : "obj-55",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 955.0, 1875.0, 106.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"presentation" : 0,
					"id" : "obj-53",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "", "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 955.0, 1900.0, 73.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-52",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 825.0, 1800.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-51",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 800.0, 1800.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 4",
					"presentation" : 0,
					"id" : "obj-49",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "bang", "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 800.0, 1755.0, 44.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "url",
					"text" : "prepend url",
					"presentation" : 0,
					"id" : "obj-42",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 2140.0, 74.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-40",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 2060.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "file:///code/Plugtastic/Plugtastic/implementations/MaxMSP/extras/plugtastic_satisfaction.html",
					"linecount" : 2,
					"presentation" : 0,
					"id" : "obj-41",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 610.0, 2085.0, 412.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "combine file:// url plugtastic_satisfaction.html @triggers 1",
					"presentation" : 0,
					"id" : "obj-37",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "", "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 610.0, 2030.0, 328.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"presentation" : 0,
					"id" : "obj-36",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 1975.0, 62.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-35",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 1925.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"presentation" : 0,
					"id" : "obj-33",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "", "int" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 1900.0, 144.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "path",
					"presentation" : 0,
					"id" : "obj-31",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 610.0, 1845.0, 36.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/code/Plugtastic/Plugtastic/implementations/MaxMSP/extras/",
					"presentation" : 0,
					"id" : "obj-26",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 610.0, 1950.0, 412.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"presentation" : 0,
					"id" : "obj-17",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "", "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 1870.0, 73.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This alpha version of Plugtastic uses a time-limited key supplied by 74Objects.  If you need a key, please contact support@74objects.com.",
					"linecount" : 2,
					"presentation" : 0,
					"id" : "obj-14",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 14.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 1455.0, 487.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For more information on developing with the Jamoma frameworks, refer the following resources:\n  + jamoma.org\n  + github.com/jamoma\n  + 74objects.com\n\nIf you need help developing extensions, a vibrant community of developers are active on the jamoma-devel mailing list at Sourceforge.",
					"linecount" : 8,
					"presentation" : 0,
					"id" : "obj-13",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 14.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 1135.0, 487.0, 142.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Creating a custom object to extend Plugtastic is a two step process:\n  1. Create a DSP extension\n  2. Create a Max external that wraps the DSP extension.",
					"linecount" : 3,
					"presentation" : 0,
					"id" : "obj-12",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 14.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 1050.0, 501.0, 57.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Plugtastic is based on the Jamoma DSP and Jamoma Audio Graph frameworks.",
					"presentation" : 0,
					"id" : "obj-4",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 14.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 1005.0, 501.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "playbar",
					"presentation" : 0,
					"id" : "obj-39",
					"background" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"ignoreclick" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hiderwff" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 388.0, 277.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "imovie",
					"presentation" : 0,
					"id" : "obj-38",
					"background" : 0,
					"numoutlets" : 3,
					"name" : "plugtastic-sneakpreview.mov",
					"autofit" : 1,
					"outlettype" : [ "int", "int", "int" ],
					"ignoreclick" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"border" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 95.0, 277.0, 293.0 ],
					"films" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -450",
					"presentation" : 0,
					"id" : "obj-24",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "int" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 870.0, 165.0, 45.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "offset 0 $1",
					"presentation" : 0,
					"id" : "obj-23",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 870.0, 205.0, 70.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Talk to Us",
					"presentation" : 0,
					"id" : "obj-20",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 36.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 200.0, 1830.0, 163.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Authorizing Plugtastic",
					"presentation" : 0,
					"id" : "obj-18",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 36.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 115.0, 1380.0, 345.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-19",
					"shape" : 0,
					"rounded" : 0,
					"background" : 0,
					"numoutlets" : 0,
					"shadow" : 0,
					"ignoreclick" : 1,
					"grad1" : [ 0.909804, 0.909804, 0.929412, 1.0 ],
					"angle" : 270.0,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 0,
					"bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"grad2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"vertical_direction" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"mode" : 1,
					"border" : 0,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 1350.0, 575.0, 439.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Extending Plugtastic",
					"presentation" : 0,
					"id" : "obj-10",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 36.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 930.0, 326.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-11",
					"shape" : 0,
					"rounded" : 0,
					"background" : 0,
					"numoutlets" : 0,
					"shadow" : 0,
					"ignoreclick" : 1,
					"grad1" : [ 0.909804, 0.909804, 0.929412, 1.0 ],
					"angle" : 270.0,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 0,
					"bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"grad2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"vertical_direction" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"mode" : 1,
					"border" : 0,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 900.0, 575.0, 439.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Using Plugtastic",
					"presentation" : 0,
					"id" : "obj-8",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 36.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 160.0, 480.0, 260.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"presentation" : 0,
					"id" : "obj-7",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"outlettype" : [ "", "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"hidden" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 870.0, 230.0, 73.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"presentation" : 0,
					"id" : "obj-5",
					"background" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 850.0, 100.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-3",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 640.0, 565.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax newfilebrowser @default_query \"Plugtastic (All)\"",
					"linecount" : 2,
					"presentation" : 0,
					"id" : "obj-83",
					"fontname" : "Verdana",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 10.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 640.0, 595.0, 281.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://plugtastic.com",
					"linecount" : 2,
					"presentation" : 0,
					"id" : "obj-32",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 705.0, 1630.0, 240.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-28",
					"background" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 0,
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 705.0, 1605.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Welcome to Plugtastic",
					"presentation" : 0,
					"id" : "obj-6",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 36.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 115.0, 30.0, 357.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-16",
					"shape" : 0,
					"rounded" : 0,
					"background" : 0,
					"numoutlets" : 0,
					"shadow" : 0,
					"ignoreclick" : 1,
					"grad1" : [ 0.909804, 0.909804, 0.929412, 1.0 ],
					"angle" : 270.0,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 0,
					"bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"grad2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"vertical_direction" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"mode" : 1,
					"border" : 0,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 575.0, 439.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-43",
					"shape" : 0,
					"rounded" : 20,
					"background" : 0,
					"numoutlets" : 0,
					"shadow" : 0,
					"ignoreclick" : 1,
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"angle" : 0.0,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"vertical_direction" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"mode" : 0,
					"border" : 0,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 65.0, 1890.0, 450.0, 345.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-21",
					"shape" : 0,
					"rounded" : 0,
					"background" : 0,
					"numoutlets" : 0,
					"shadow" : 0,
					"ignoreclick" : 1,
					"grad1" : [ 0.909804, 0.909804, 0.929412, 1.0 ],
					"angle" : 270.0,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 0,
					"bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"grad2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"vertical_direction" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"mode" : 1,
					"border" : 0,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 1800.0, 575.0, 439.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation" : 0,
					"id" : "obj-152",
					"background" : 0,
					"numoutlets" : 4,
					"hltcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"dragtrack" : 0,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"ignoreclick" : 0,
					"handoffdelay" : 250,
					"hidden" : 0,
					"stay" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hilite" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 645.0, 163.0, 20.0 ],
					"toggle" : 0,
					"handoff" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Plugtastic",
					"presentation" : 0,
					"id" : "obj-139",
					"fontname" : "Lucida Grande",
					"background" : 0,
					"underline" : 0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 1,
					"fontface" : 0,
					"fontsize" : 12.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 122.0, 645.0, 67.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-140",
					"shape" : 0,
					"rounded" : 17,
					"background" : 0,
					"numoutlets" : 0,
					"shadow" : 0,
					"ignoreclick" : 1,
					"grad1" : [ 0.929412, 0.929412, 0.929412, 1.0 ],
					"angle" : 270.0,
					"bordercolor" : [ 0.627451, 0.627451, 0.627451, 1.0 ],
					"hidden" : 0,
					"bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"grad2" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"vertical_direction" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"mode" : 1,
					"border" : 1,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 72.0, 647.0, 160.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-1",
					"shape" : 0,
					"rounded" : 0,
					"background" : 0,
					"numoutlets" : 0,
					"shadow" : 0,
					"ignoreclick" : 1,
					"grad1" : [ 0.909804, 0.909804, 0.929412, 1.0 ],
					"angle" : 270.0,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 0,
					"bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"grad2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"vertical_direction" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"mode" : 1,
					"border" : 0,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 450.0, 575.0, 439.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"presentation" : 0,
					"id" : "obj-27",
					"fontname" : "Helvetica Neue Light",
					"background" : 0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 13.0,
					"gradient" : 0,
					"hidden" : 1,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 745.0, 225.0, 50.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 0 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-118", 2 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 1 ],
					"destination" : [ "obj-164", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-164", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 0 ],
					"destination" : [ "obj-154", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 1 ],
					"destination" : [ "obj-173", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 0 ],
					"destination" : [ "obj-173", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-154", 0 ],
					"destination" : [ "obj-155", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-156", 0 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-156", 1 ],
					"destination" : [ "obj-172", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-156", 0 ],
					"destination" : [ "obj-172", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-157", 0 ],
					"destination" : [ "obj-158", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-159", 0 ],
					"destination" : [ "obj-160", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-159", 1 ],
					"destination" : [ "obj-171", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-159", 0 ],
					"destination" : [ "obj-171", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-160", 0 ],
					"destination" : [ "obj-161", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 673.5, 1895.5, 619.5, 1895.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-172", 0 ],
					"destination" : [ "obj-146", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-173", 0 ],
					"destination" : [ "obj-144", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 619.5, 2013.0, 774.0, 2013.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
