{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 478.0, 194.0, 844.0, 494.0 ],
		"bglocked" : 0,
		"defrect" : [ 478.0, 194.0, 844.0, 494.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route normalize",
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 49.0, 58.0, 73.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.01",
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 325.0, 215.0, 49.0, 20.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 49.0, 255.0, 54.0, 20.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 226.0, 280.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 233.0, 210.0, 34.0, 20.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "normalize 1.",
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 49.0, 280.0, 76.0, 18.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pass~",
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 317.0, 366.0, 42.0, 20.0 ],
					"fontsize" : 11.595187,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route bufferwindow",
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 151.0, 58.0, 87.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 2",
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 151.0, 35.0, 25.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load-sequence",
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 201.0, 303.0, 93.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 233.0, 44.0, 1059.0, 489.0 ],
						"bglocked" : 0,
						"defrect" : [ 233.0, 44.0, 1059.0, 489.0 ],
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
									"text" : "used to be a deferlow",
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 267.0, 133.0, 20.0 ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 727.0, 170.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reverse $1",
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 743.0, 148.0, 67.0, 18.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route size reverse",
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 574.0, 94.0, 109.0, 20.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-11",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 574.0, 60.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "believe me, this is a great load sequence for tconvolution",
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 374.0, 510.0, 318.0, 20.0 ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 485.0, 203.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 1",
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 485.0, 228.0, 54.0, 20.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "onebang",
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 428.0, 262.0, 57.0, 20.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 428.0, 222.0, 45.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 428.0, 197.0, 36.0, 20.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if DAC is off, segmentsize is changed immediatly. Otherwise, it changes when it is turned off.\nOn load, an empty filterKernel is loaded & calculated: this allows to open first IR with DSP on without breaking the external",
									"linecount" : 6,
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 374.0, 334.0, 208.0, 75.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 593.0, 189.0, 32.5, 20.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 144.0, 356.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 428.0, 169.0, 61.0, 20.0 ],
									"fontsize" : 11.595187,
									"outlettype" : [ "int", "float", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 574.0, 140.0, 96.0, 20.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "segmentsize",
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 486.0, 120.0, 78.0, 20.0 ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to tconvolution",
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 173.0, 510.0, 92.0, 20.0 ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bang from buffer (when read)",
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 96.0, 111.0, 168.0, 20.0 ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 149.0, 507.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 276.0, 109.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 574.0, 166.0, 56.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "int", "", "" ],
									"items" : [ 256, ",", 512, ",", 1024, ",", 2048, ",", 4096 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-44",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 181.0, 385.0, 27.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"id" : "obj-45",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 49.0, 425.0, 45.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "defer",
									"id" : "obj-46",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 144.0, 330.0, 31.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-39",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 143.0, 270.0, 48.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "setSegmentSize $1",
									"id" : "obj-47",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 180.0, 429.0, 96.0, 15.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "calculate_filterKernel",
									"id" : "obj-48",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 49.0, 447.0, 109.0, 15.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "load_filterKernel #0-IR",
									"id" : "obj-49",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 192.0, 297.0, 100.0, 15.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 437.5, 284.0, 199.0, 284.0, 199.0, 257.0, 152.5, 257.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 494.5, 248.0, 152.5, 248.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-46", 0 ],
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 736.5, 221.0, 529.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 752.5, 446.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-44", 1 ],
									"hidden" : 0,
									"midpoints" : [ 616.0, 320.0, 235.0, 320.0, 235.0, 380.0, 198.5, 380.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 602.5, 215.0, 529.5, 215.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "buffer~ #0-IR 9000",
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 151.0, 188.0, 101.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "strangely enough, that's what it needs...",
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 376.0, 216.0, 234.0, 20.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "maximum kernelLength=96*segmentSize",
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 543.0, 412.0, 191.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "latency=2*segmentSize=fftSize",
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 543.0, 397.0, 191.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use setSegmentSize only while processing is turned off, because the output volume depends on the segment size;\rpowers of 2 between 256 and 16383 are allowed, default is 4096;\rafter changing the segment size you have to use the function calculate_filterKernel again",
					"linecount" : 9,
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 543.0, 427.0, 178.0, 100.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "important!!! the \"Signal Vector Size\" is responsible for the correct process-scheduling, if it is to big, tconvolutionUB~ won't work, so use a small vector size like 32 or 64",
					"linecount" : 6,
					"textcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 549.0, 284.0, 150.0, 69.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 1.0, 0.035294, 0.035294, 1.0 ],
					"rounded" : 0,
					"id" : "obj-3",
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 544.0, 278.0, 171.0, 86.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 3",
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 429.0, 278.0, 25.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out~ 1",
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 312.0, 471.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 429.0, 368.0, 52.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 429.0, 322.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mute $1",
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 429.0, 343.0, 47.0, 15.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 1",
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 49.0, 27.0, 25.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{
						"attr_comment" : [ "commands", "inlet" ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in~ 1",
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 325.0, 188.0, 33.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tconvolutionUB~",
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 322.0, 325.0, 83.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-51", 1 ],
					"hidden" : 0,
					"midpoints" : [ 112.5, 105.0, 284.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [ 257.5, 240.0, 93.5, 240.0 ]
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 58.5, 297.0, 63.0, 297.0, 63.0, 183.0, 160.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
