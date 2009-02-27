{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 676.0, 44.0, 693.0, 758.0 ],
		"bglocked" : 0,
		"defrect" : [ 676.0, 44.0, 693.0, 758.0 ],
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
					"text" : "delay 1500",
					"id" : "obj-25",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 452.0, 193.0, 64.0, 19.0 ],
					"fontsize" : 11.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 452.0, 171.0, 56.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/gain 100",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 452.0, 222.0, 90.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "patch Nicolas Deflache, february 2009",
					"linecount" : 2,
					"id" : "obj-37",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 512.0, 685.0, 133.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p license",
					"id" : "obj-36",
					"fontname" : "Arial",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 65.0, 58.0, 20.0 ],
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1053.0, 47.0, 376.0, 113.0 ],
						"bglocked" : 0,
						"defrect" : [ 1053.0, 47.0, 376.0, 113.0 ],
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
									"text" : "Tconvolution v0.1, feb 2006 - Thomas Resch\n\nFreeware, not to be distributed commercialy.\n\nhttp://www.zippernoise.net/",
									"linecount" : 5,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 22.0, 328.0, 75.0 ],
									"fontsize" : 12.0
								}

							}
 ],
						"lines" : [  ]
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
					"maxclass" : "message",
					"text" : "4",
					"id" : "obj-27",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 259.0, 321.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3",
					"id" : "obj-26",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 224.0, 321.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 189.0, 321.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 154.0, 321.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"id" : "obj-20",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 229.0, 668.0, 81.0, 20.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/saturation/depth 10.",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 329.0, 668.0, 195.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/saturation/depth 10.",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 23.0, 667.0, 182.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~.2",
					"id" : "obj-10",
					"presentation_rect" : [ 340.0, 524.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 327.0, 522.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/output~.2" ],
					"name" : "jmod.output~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~.1",
					"id" : "obj-49",
					"presentation_rect" : [ 15.0, 15.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 20.0, 522.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/output~.1" ],
					"name" : "jmod.output~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"id" : "obj-32",
					"presentation_rect" : [ 15.0, 15.0, 300.0, 140.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 328.0, 244.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input" ],
					"name" : "jmod.input~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 127",
					"id" : "obj-24",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 455.0, 460.0, 41.0, 20.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 455.0, 438.0, 32.5, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 328.0, 434.0, 124.0, 26.0 ],
					"outlettype" : [ "" ],
					"size" : 156.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/gain $1",
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 328.0, 461.0, 84.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.tconvolution~.help",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 347.0, 141.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "IR number",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 321.0, 70.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load_IR",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 22.0, 322.0, 58.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 780.0, 44.0, 354.0, 259.0 ],
						"bglocked" : 0,
						"defrect" : [ 780.0, 44.0, 354.0, 259.0 ],
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
									"text" : "prepend /IR.1/open",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 46.0, 145.0, 110.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf set /IR.%i/open",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 141.0, 105.0, 127.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-2",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 211.0, 35.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /file",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 46.0, 57.0, 101.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-6",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 46.0, 34.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 196.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/file_browser",
					"id" : "obj-17",
					"presentation_rect" : [ 15.0, 15.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 22.0, 244.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/file_browser" ],
					"name" : "jmod.file_browser.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 499.0, 418.0, 87.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/channels 2",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 498.0, 438.0, 176.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limitations:\n- Max/MSP Signal Vector Size MUST be set to maximum SegmentSize/16; at 256 I get harmonic distorsion. Changing Signal Vector size while buffers full is problematic.\n- Only first channel of impulse response files will be loaded\n- If IR is longer than Max IR length indicated in module, tail won't be loaded\n- Segment Size and Reverse take effect when DAC is switched off, or when loading new IR",
					"linecount" : 8,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 95.0, 425.0, 104.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-8",
					"presentation_rect" : [ 45.0, 45.0, 300.0, 70.0 ],
					"numinlets" : 5,
					"lockeddragscroll" : 1,
					"numoutlets" : 5,
					"patching_rect" : [ 21.0, 415.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal", "signal", "signal" ],
					"args" : [ "/tconvolution~" ],
					"name" : "jmod.tconvolution~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.tconvolution~",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 35.0, 189.0, 28.0 ],
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4 channels convolution based on tconvolution.mxo",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 63.0, 333.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"rounded" : 0,
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 27.0, 556.0, 62.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.tconvolution~.help",
					"id" : "obj-48",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 21.0, 393.0, 140.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [ 100.75, 507.0, 170.0, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-49", 2 ],
					"hidden" : 0,
					"midpoints" : [ 171.0, 507.0, 310.5, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [ 337.5, 507.0, 29.5, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 3 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 241.25, 507.0, 477.0, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 4 ],
					"destination" : [ "obj-10", 2 ],
					"hidden" : 0,
					"midpoints" : [ 311.5, 507.0, 617.5, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [ 337.5, 507.0, 336.5, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [ 478.0, 411.0, 168.0, 411.0, 168.0, 411.0, 100.75, 411.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 2 ],
					"destination" : [ "obj-8", 2 ],
					"hidden" : 0,
					"midpoints" : [ 618.5, 402.0, 171.0, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-8", 3 ],
					"hidden" : 0,
					"midpoints" : [ 478.0, 402.0, 241.25, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 2 ],
					"destination" : [ "obj-8", 4 ],
					"hidden" : 0,
					"midpoints" : [ 618.5, 402.0, 311.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
