{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 100.0, 210.0, 884.0, 691.0 ],
		"bglocked" : 0,
		"defrect" : [ 100.0, 210.0, 884.0, 691.0 ],
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
					"maxclass" : "message",
					"text" : "/speaker.16/position -0.019134 0.046194 0.",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"id" : "obj-5",
					"patching_rect" : [ 25.0, 564.0, 301.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module for describing loudspeaker setup as XYZ coordinates.",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-69",
					"patching_rect" : [ 12.0, 41.0, 345.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.speaker.setup",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"id" : "obj-68",
					"patching_rect" : [ 10.0, 14.0, 271.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"numoutlets" : 0,
					"rounded" : 15,
					"presentation_rect" : [ 20.0, 19.0, 351.0, 53.0 ],
					"numinlets" : 1,
					"id" : "obj-62",
					"patching_rect" : [ 7.0, 11.0, 333.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p xyz2ambi",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-74",
					"patching_rect" : [ 207.0, 531.0, 56.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 490.0, 269.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 490.0, 269.0, 600.0, 426.0 ],
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
									"maxclass" : "newobj",
									"text" : "zl join",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-4",
									"patching_rect" : [ 102.0, 323.0, 75.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl nth 1",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-5",
									"patching_rect" : [ 17.0, 103.0, 44.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"id" : "obj-6",
									"patching_rect" : [ 53.0, 255.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess separator",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-7",
									"patching_rect" : [ 35.0, 284.0, 101.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-8",
									"patching_rect" : [ 17.0, 305.0, 51.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /speaker.",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-9",
									"patching_rect" : [ 17.0, 143.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"numinlets" : 1,
									"id" : "obj-10",
									"patching_rect" : [ 102.0, 349.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * 0.1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-15",
									"patching_rect" : [ 133.0, 157.0, 69.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append /position",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-16",
									"patching_rect" : [ 17.0, 207.0, 77.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 3",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-17",
									"patching_rect" : [ 132.0, 105.0, 51.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 2",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-18",
									"patching_rect" : [ 17.0, 69.0, 51.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"id" : "obj-19",
									"patching_rect" : [ 34.0, 18.0, 23.0, 23.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-75",
					"patching_rect" : [ 26.0, 251.0, 58.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 432.0, 170.0, 574.0, 476.0 ],
						"bglocked" : 0,
						"defrect" : [ 432.0, 170.0, 574.0, 476.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "downscaling for the ambimonitor",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-2",
									"patching_rect" : [ 191.0, 252.0, 150.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-11",
									"patching_rect" : [ 69.0, 293.0, 54.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * 0.1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-30",
									"patching_rect" : [ 103.0, 259.0, 88.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend xyz",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-29",
									"patching_rect" : [ 69.0, 315.0, 72.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-56",
									"patching_rect" : [ 163.0, 199.0, 47.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl rev",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-55",
									"patching_rect" : [ 163.0, 179.0, 38.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-33",
									"patching_rect" : [ 68.0, 216.0, 54.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /speaker/position /speaker/active",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-22",
									"patching_rect" : [ 69.0, 155.0, 210.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-21",
									"patching_rect" : [ 69.0, 134.0, 71.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-14",
									"patching_rect" : [ 69.0, 111.0, 45.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscinstance",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-3",
									"patching_rect" : [ 69.0, 91.0, 97.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"numinlets" : 1,
									"id" : "obj-34",
									"patching_rect" : [ 70.0, 374.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend delete",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-28",
									"patching_rect" : [ 353.0, 214.0, 86.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-26",
									"patching_rect" : [ 353.0, 187.0, 32.5, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-25",
									"patching_rect" : [ 353.0, 112.0, 32.5, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-23",
									"patching_rect" : [ 353.0, 159.0, 46.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 32",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-20",
									"patching_rect" : [ 353.0, 136.0, 35.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /numSpeakers",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-27",
									"patching_rect" : [ 108.0, 29.0, 280.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"id" : "obj-32",
									"patching_rect" : [ 107.0, 3.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 2 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 172.5, 222.0, 339.0, 222.0, 339.0, 210.0, 362.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "ambimonitor.maxpat",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"args" : [  ],
					"numinlets" : 1,
					"id" : "obj-14",
					"patching_rect" : [ 25.0, 313.0, 201.0, 216.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Common loudspeaker layouts are provided as presets.",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-1",
					"patching_rect" : [ 10.0, 87.0, 310.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jcom.SpatDIF.coordinates.maxpat",
					"numoutlets" : 0,
					"border" : 1,
					"lockeddragscroll" : 1,
					"args" : [  ],
					"numinlets" : 0,
					"id" : "obj-3",
					"patching_rect" : [ 350.0, 0.0, 522.0, 675.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p equal_distro",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-4",
					"patching_rect" : [ 27.0, 143.0, 74.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 902.0, 376.0, 399.0, 364.0 ],
						"bglocked" : 0,
						"defrect" : [ 902.0, 376.0, 399.0, 364.0 ],
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
									"text" : "qlim 100",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-13",
									"patching_rect" : [ 49.0, 28.0, 55.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/numSpeakers $1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-1",
									"patching_rect" : [ 301.0, 96.0, 91.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!/ 360.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-2",
									"patching_rect" : [ 228.0, 95.0, 43.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i i",
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-3",
									"patching_rect" : [ 50.0, 50.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-4",
									"patching_rect" : [ 56.0, 235.0, 38.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 0. 5",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-5",
									"patching_rect" : [ 203.0, 180.0, 43.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf /speaker.%ld/position",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-6",
									"patching_rect" : [ 56.0, 194.0, 143.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 45.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-7",
									"patching_rect" : [ 203.0, 158.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-8",
									"patching_rect" : [ 203.0, 133.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 8 1",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-9",
									"patching_rect" : [ 35.0, 89.0, 46.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace position @input aed @output xyz",
									"linecount" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-10",
									"patching_rect" : [ 203.0, 199.0, 179.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"id" : "obj-11",
									"patching_rect" : [ 50.0, 7.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"numinlets" : 1,
									"id" : "obj-12",
									"patching_rect" : [ 56.0, 268.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 310.5, 259.0, 65.0, 259.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 70.0, 82.0, 237.5, 82.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 80.5, 76.0, 310.5, 76.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 71.5, 128.0, 212.5, 128.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.aed2ambimonitor",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-8",
					"patching_rect" : [ 150.0, 245.0, 113.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"minimum" : 0,
					"triscale" : 0.9,
					"maximum" : 32,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-9",
					"patching_rect" : [ 27.0, 123.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"numoutlets" : 0,
					"numinlets" : 1,
					"id" : "obj-10",
					"patching_rect" : [ 156.0, 266.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.speaker.setup.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"args" : [ "/setup" ],
					"numinlets" : 1,
					"id" : "obj-11",
					"patching_rect" : [ 27.0, 168.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of speakers",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-12",
					"patching_rect" : [ 67.0, 124.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loudspeaker x, y, z-coordinates can be set in the inspector.",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-13",
					"patching_rect" : [ 10.0, 73.0, 310.0, 17.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
