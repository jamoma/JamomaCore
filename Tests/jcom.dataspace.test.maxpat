{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 630.0, 83.0, 741.0, 375.0 ],
		"bglocked" : 0,
		"defrect" : [ 630.0, 83.0, 741.0, 375.0 ],
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
					"maxclass" : "button",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 205.0, 165.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 165.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p PitchDataspaceTest",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 400.0, 195.0, 116.0, 19.0 ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 22.0, 76.0, 928.0, 692.0 ],
						"bglocked" : 0,
						"defrect" : [ 22.0, 76.0, 928.0, 692.0 ],
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
									"maxclass" : "comment",
									"text" : "speed2Hz calculated thus:",
									"linecount" : 3,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-65",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 675.0, 70.0, 84.0, 43.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "16.351599",
									"id" : "obj-63",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 675.0, 200.0, 88.0, 17.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mtof",
									"id" : "obj-61",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 675.0, 170.0, 34.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 12",
									"id" : "obj-60",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 675.0, 145.0, 31.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 675.0, 120.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"id" : "obj-48",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 150.0, 540.0, 97.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_neutralspeed 2.",
									"id" : "obj-49",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 505.0, 545.0, 287.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_neutral2midi 69.",
									"id" : "obj-50",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 380.0, 570.0, 292.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_neutral2Hz 440.",
									"id" : "obj-51",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 260.0, 595.0, 290.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_neutral2cents 6900.",
									"id" : "obj-52",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 620.0, 310.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 440. 440. 440. 16.351599",
									"id" : "obj-53",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 135.0, 405.0, 151.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float", "float", "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input Hz @output cents",
									"linecount" : 4,
									"id" : "obj-57",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 135.0, 455.0, 102.0, 55.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Testing convertions from neutral unit",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 370.0, 222.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Testing convertions to neutral unit",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-45",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 130.0, 65.0, 222.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 145.0, 230.0, 97.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 35.0, 35.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_speed2neutral 16.351599",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 500.0, 235.0, 338.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_midi2neutral 440.",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 375.0, 260.0, 298.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_Hz2neutral 440.",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 255.0, 285.0, 290.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_cents2neutral 440.",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 130.0, 310.0, 304.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 6900. 440. 69. 2.",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 130.0, 95.0, 107.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float", "float", "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input speed @output Hz",
									"linecount" : 4,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 500.0, 145.0, 106.0, 55.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input midi @output Hz",
									"linecount" : 4,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 375.0, 145.0, 104.0, 55.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input Hz @output Hz",
									"linecount" : 4,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 255.0, 145.0, 101.0, 55.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input cents @output Hz",
									"linecount" : 4,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 130.0, 145.0, 112.0, 55.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input Hz @output speed",
									"linecount" : 4,
									"id" : "obj-54",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 505.0, 455.0, 104.0, 55.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input Hz @output midi",
									"linecount" : 4,
									"id" : "obj-55",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 380.0, 455.0, 101.0, 55.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input Hz @output Hz",
									"linecount" : 4,
									"id" : "obj-56",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 260.0, 455.0, 92.0, 55.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 3 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 3 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 2 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 1 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-63", 1 ],
									"hidden" : 0,
									"midpoints" : [ 684.5, 196.0, 753.5, 196.0 ]
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p test_units_are_nonsense",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 205.0, 195.0, 147.0, 19.0 ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 911.0, 410.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 911.0, 410.0 ],
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
									"text" : "t 0. 3.",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"presentation_rect" : [ 101.0, 138.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 100.0, 140.0, 41.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"presentation_rect" : [ 101.0, 203.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 205.0, 32.5, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace nonexisting @input a @output b",
									"linecount" : 2,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 125.0, 165.0, 217.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_input_unit_nonsense 0.",
									"linecount" : 2,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"presentation_rect" : [ 101.0, 233.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 100.0, 235.0, 222.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0. 3.",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"presentation_rect" : [ 81.0, 222.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 350.0, 140.0, 41.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"presentation_rect" : [ 81.0, 272.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 350.0, 205.0, 32.5, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input nonsense @output midi",
									"linecount" : 2,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 375.0, 165.0, 183.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_input_unit_nonsense 0.",
									"linecount" : 2,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 350.0, 235.0, 222.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "These are tests to ensure that Max do not crash if we attempt to use none-existing dataspaces or units.",
									"linecount" : 3,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 280.0, 30.0, 232.0, 43.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0. 3.",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 635.0, 140.0, 41.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 635.0, 205.0, 32.5, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input midi @output nonsense",
									"linecount" : 2,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 660.0, 165.0, 183.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdataspace_output_unit_nonsense 0.",
									"linecount" : 2,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 635.0, 235.0, 230.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 45.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b b",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 70.0, 80.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 70.0, 55.0, 56.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 70.0, 30.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 70.0, 200.0, 67.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.finished",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 70.0, 175.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
