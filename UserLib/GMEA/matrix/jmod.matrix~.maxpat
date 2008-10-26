{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 210.0, 71.0, 560.0, 468.0 ],
		"bglocked" : 0,
		"defrect" : [ 210.0, 71.0, 560.0, 468.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "newobj",
					"text" : "p matrix",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"patching_rect" : [ 85.0, 395.0, 100.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 37.0, 58.0, 1037.0, 715.0 ],
						"bgcolor" : [ 0.160784, 0.160784, 0.298039, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 37.0, 58.0, 1037.0, 715.0 ],
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
									"maxclass" : "matrixctrl",
									"columns" : 16,
									"numinlets" : 1,
									"numoutlets" : 2,
									"presentation_rect" : [ 0.0, 0.0, 512.0, 480.0 ],
									"outlettype" : [ "list", "list" ],
									"autosize" : 1,
									"rows" : 10,
									"id" : "obj-171",
									"patching_rect" : [ 115.0, 405.0, 258.0, 162.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-131",
									"patching_rect" : [ 930.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-132",
									"patching_rect" : [ 930.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-133",
									"patching_rect" : [ 930.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-134",
									"patching_rect" : [ 930.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-135",
									"patching_rect" : [ 930.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-136",
									"patching_rect" : [ 930.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-137",
									"patching_rect" : [ 930.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-138",
									"patching_rect" : [ 930.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-139",
									"patching_rect" : [ 930.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-140",
									"patching_rect" : [ 930.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-141",
									"patching_rect" : [ 875.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-142",
									"patching_rect" : [ 875.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-143",
									"patching_rect" : [ 875.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-144",
									"patching_rect" : [ 875.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-145",
									"patching_rect" : [ 875.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-146",
									"patching_rect" : [ 875.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-147",
									"patching_rect" : [ 875.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-148",
									"patching_rect" : [ 875.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-149",
									"patching_rect" : [ 875.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-150",
									"patching_rect" : [ 875.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-151",
									"patching_rect" : [ 820.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-152",
									"patching_rect" : [ 820.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-153",
									"patching_rect" : [ 820.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-154",
									"patching_rect" : [ 820.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-155",
									"patching_rect" : [ 820.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-156",
									"patching_rect" : [ 820.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-157",
									"patching_rect" : [ 820.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-158",
									"patching_rect" : [ 820.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-159",
									"patching_rect" : [ 820.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-160",
									"patching_rect" : [ 820.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-161",
									"patching_rect" : [ 765.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-162",
									"patching_rect" : [ 765.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-163",
									"patching_rect" : [ 765.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-164",
									"patching_rect" : [ 765.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-165",
									"patching_rect" : [ 765.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-166",
									"patching_rect" : [ 765.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-167",
									"patching_rect" : [ 765.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-168",
									"patching_rect" : [ 765.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-169",
									"patching_rect" : [ 765.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-170",
									"patching_rect" : [ 765.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-71",
									"patching_rect" : [ 710.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-72",
									"patching_rect" : [ 710.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-73",
									"patching_rect" : [ 710.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-74",
									"patching_rect" : [ 710.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-75",
									"patching_rect" : [ 710.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-76",
									"patching_rect" : [ 710.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-77",
									"patching_rect" : [ 710.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-78",
									"patching_rect" : [ 710.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-79",
									"patching_rect" : [ 710.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-80",
									"patching_rect" : [ 710.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-81",
									"patching_rect" : [ 655.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-82",
									"patching_rect" : [ 655.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-83",
									"patching_rect" : [ 655.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"patching_rect" : [ 655.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-85",
									"patching_rect" : [ 655.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-86",
									"patching_rect" : [ 655.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-87",
									"patching_rect" : [ 655.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-88",
									"patching_rect" : [ 655.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-89",
									"patching_rect" : [ 655.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-90",
									"patching_rect" : [ 655.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-91",
									"patching_rect" : [ 600.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-92",
									"patching_rect" : [ 600.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-93",
									"patching_rect" : [ 600.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-94",
									"patching_rect" : [ 600.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-95",
									"patching_rect" : [ 600.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-96",
									"patching_rect" : [ 600.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-97",
									"patching_rect" : [ 600.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-98",
									"patching_rect" : [ 600.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-99",
									"patching_rect" : [ 600.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-100",
									"patching_rect" : [ 600.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-101",
									"patching_rect" : [ 545.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-102",
									"patching_rect" : [ 545.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-103",
									"patching_rect" : [ 545.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-104",
									"patching_rect" : [ 545.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-105",
									"patching_rect" : [ 545.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-106",
									"patching_rect" : [ 545.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-107",
									"patching_rect" : [ 545.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-108",
									"patching_rect" : [ 545.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-109",
									"patching_rect" : [ 545.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-110",
									"patching_rect" : [ 545.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-111",
									"patching_rect" : [ 490.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-112",
									"patching_rect" : [ 490.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-113",
									"patching_rect" : [ 490.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-114",
									"patching_rect" : [ 490.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-115",
									"patching_rect" : [ 490.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-116",
									"patching_rect" : [ 490.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-117",
									"patching_rect" : [ 490.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-118",
									"patching_rect" : [ 490.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-119",
									"patching_rect" : [ 490.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-120",
									"patching_rect" : [ 490.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-121",
									"patching_rect" : [ 435.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-122",
									"patching_rect" : [ 435.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-123",
									"patching_rect" : [ 435.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-124",
									"patching_rect" : [ 435.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-125",
									"patching_rect" : [ 435.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-126",
									"patching_rect" : [ 435.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-127",
									"patching_rect" : [ 435.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-128",
									"patching_rect" : [ 435.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-129",
									"patching_rect" : [ 435.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-130",
									"patching_rect" : [ 435.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"patching_rect" : [ 380.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-42",
									"patching_rect" : [ 380.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"patching_rect" : [ 380.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-44",
									"patching_rect" : [ 380.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-45",
									"patching_rect" : [ 380.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-46",
									"patching_rect" : [ 380.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-47",
									"patching_rect" : [ 380.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-48",
									"patching_rect" : [ 380.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-49",
									"patching_rect" : [ 380.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-50",
									"patching_rect" : [ 380.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-51",
									"patching_rect" : [ 325.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-52",
									"patching_rect" : [ 325.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-53",
									"patching_rect" : [ 325.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-54",
									"patching_rect" : [ 325.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-55",
									"patching_rect" : [ 325.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-56",
									"patching_rect" : [ 325.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-57",
									"patching_rect" : [ 325.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-58",
									"patching_rect" : [ 325.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-59",
									"patching_rect" : [ 325.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-60",
									"patching_rect" : [ 325.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-61",
									"patching_rect" : [ 270.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-62",
									"patching_rect" : [ 270.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-63",
									"patching_rect" : [ 270.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-64",
									"patching_rect" : [ 270.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-65",
									"patching_rect" : [ 270.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-66",
									"patching_rect" : [ 270.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-67",
									"patching_rect" : [ 270.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-68",
									"patching_rect" : [ 270.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-69",
									"patching_rect" : [ 270.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-70",
									"patching_rect" : [ 270.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-31",
									"patching_rect" : [ 215.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-32",
									"patching_rect" : [ 215.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-33",
									"patching_rect" : [ 215.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"patching_rect" : [ 215.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"patching_rect" : [ 215.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-36",
									"patching_rect" : [ 215.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-37",
									"patching_rect" : [ 215.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-38",
									"patching_rect" : [ 215.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-39",
									"patching_rect" : [ 215.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"patching_rect" : [ 215.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"patching_rect" : [ 160.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"patching_rect" : [ 160.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"patching_rect" : [ 160.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"patching_rect" : [ 160.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-25",
									"patching_rect" : [ 160.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-26",
									"patching_rect" : [ 160.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"patching_rect" : [ 160.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-28",
									"patching_rect" : [ 160.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"patching_rect" : [ 160.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"patching_rect" : [ 160.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"patching_rect" : [ 105.0, 280.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"patching_rect" : [ 105.0, 260.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"patching_rect" : [ 105.0, 240.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"patching_rect" : [ 105.0, 220.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"patching_rect" : [ 105.0, 200.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"patching_rect" : [ 105.0, 180.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"patching_rect" : [ 105.0, 160.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"patching_rect" : [ 105.0, 140.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"patching_rect" : [ 105.0, 120.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jcom.levelslider.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "in.1/to/out.1", "@size", 50, 15, "@frgb", 255, 255, 255, "@brgb", 50, 50, 50, "@rgb2", 255, 0, 0, "@range", 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"patching_rect" : [ 105.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"patching_rect" : [ 15.0, 20.0, 13.0, 13.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /open",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"patching_rect" : [ 85.0, 340.0, 93.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"patching_rect" : [ 85.0, 365.0, 57.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"patching_rect" : [ 85.0, 315.0, 122.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p matrix~",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"patching_rect" : [ 215.0, 355.0, 100.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 151.0, 101.0, 743.0, 509.0 ],
						"bglocked" : 0,
						"defrect" : [ 151.0, 101.0, 743.0, 509.0 ],
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
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"patching_rect" : [ 25.0, 130.0, 59.0, 18.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p script",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"patching_rect" : [ 25.0, 95.0, 100.0, 18.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 596.0, 232.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 596.0, 232.0, 640.0, 480.0 ],
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
										"visible" : 1,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-2",
													"patching_rect" : [ 50.0, 320.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"patching_rect" : [ 35.0, 35.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [  ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /inlets/number /outlets/number",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"patching_rect" : [ 25.0, 55.0, 210.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "in",
									"text" : "jcom.multi.out~",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 32,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"patching_rect" : [ 260.0, 350.0, 445.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "out",
									"text" : "jcom.multi.in~",
									"fontsize" : 10.0,
									"numinlets" : 32,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"patching_rect" : [ 260.0, 425.0, 448.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"patching_rect" : [ 240.0, 190.0, 32.5, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl rev",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"patching_rect" : [ 240.0, 245.0, 34.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"patching_rect" : [ 240.0, 215.0, 85.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"patching_rect" : [ 305.0, 160.0, 32.5, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"patching_rect" : [ 240.0, 275.0, 169.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /in/to",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"patching_rect" : [ 215.0, 125.0, 83.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscinstance",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"patching_rect" : [ 215.0, 165.0, 87.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscinstance",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"patching_rect" : [ 215.0, 95.0, 284.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "matrix",
									"text" : "matrix~ 5 4 0.",
									"fontsize" : 10.0,
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "signal", "signal", "list" ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"patching_rect" : [ 260.0, 390.0, 100.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"patching_rect" : [ 25.0, 15.0, 23.0, 23.0 ],
									"comment" : "osc messages to algorithm"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-7",
									"patching_rect" : [ 260.0, 455.0, 26.0, 26.0 ],
									"comment" : "signal outlet 1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"patching_rect" : [ 260.0, 315.0, 20.0, 20.0 ],
									"comment" : "signal inlet 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 249.5, 383.0, 269.5, 383.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-15", 0 ],
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.2",
					"presentation" : 1,
					"numinlets" : 1,
					"has_panel" : 1,
					"numoutlets" : 1,
					"prefix" : "audio",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"patching_rect" : [ 2.0, 0.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"patching_rect" : [ 155.0, 275.0, 57.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"patching_rect" : [ 85.0, 250.0, 136.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 115.0, 247.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 85.0, 220.0, 151.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"patching_rect" : [ 55.0, 135.0, 140.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Audio Matrix module\"",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"patching_rect" : [ 15.0, 170.0, 354.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"patching_rect" : [ 45.0, 85.0, 99.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"patching_rect" : [ 15.0, 85.0, 24.0, 24.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"patching_rect" : [ 285.0, 115.0, 41.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"patching_rect" : [ 295.0, 320.0, 24.0, 24.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-35",
					"patching_rect" : [ 215.0, 390.0, 24.0, 24.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multi cable signal input----",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-44",
					"fontname" : "Verdana",
					"patching_rect" : [ 315.0, 321.0, 163.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-45",
					"patching_rect" : [ 15.0, 215.0, 24.0, 24.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multi cable signal output----",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"patching_rect" : [ 255.0, 390.0, 171.0, 19.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 156.0, 24.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 156.0, 24.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 156.0, 24.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 164.5, 305.0, 224.5, 305.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
