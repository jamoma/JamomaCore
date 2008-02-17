{
	"patcher" : 	{
		"rect" : [ 25.0, 47.0, 640.0, 506.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 47.0, 640.0, 506.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ThreeChannelsExample",
					"patching_rect" : [ 45.0, 150.0, 145.0, 20.0 ],
					"fontname" : "Arial",
					"id" : "obj-18",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"rect" : [ 50.0, 72.0, 768.0, 582.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 72.0, 768.0, 582.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 360.0, 120.0, 50.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"presentation_rect" : [ 361.0, 119.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 315.0, 120.0, 32.5, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-19",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 465.0, 45.0, 50.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startwindow",
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 265.0, 72.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"patching_rect" : [ 350.0, 265.0, 148.0, 59.0 ],
									"id" : "obj-15",
									"numinlets" : 2,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number~",
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 350.0, 205.0, 85.0, 20.0 ],
									"fontname" : "Arial",
									"mode" : 2,
									"sig" : 0.0,
									"id" : "obj-14",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 2.",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 450.0, 75.0, 45.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "phasor~ 200",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 375.0, 75.0, 75.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"patching_rect" : [ 185.0, 265.0, 148.0, 59.0 ],
									"id" : "obj-11",
									"numinlets" : 2,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number~",
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 245.0, 205.0, 85.0, 20.0 ],
									"fontname" : "Arial",
									"mode" : 2,
									"sig" : 0.0,
									"id" : "obj-10",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~ 200",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 310.0, 75.0, 66.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 2.",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 255.0, 75.0, 45.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 530.0, 100.0, 50.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"patching_rect" : [ 50.0, 295.0, 45.0, 45.0 ],
									"id" : "obj-5",
									"numinlets" : 2,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number~",
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 140.0, 205.0, 85.0, 20.0 ],
									"fontname" : "Arial",
									"mode" : 2,
									"sig" : 0.0,
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~ 20",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 135.0, 75.0, 60.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 2.",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 210.0, 75.0, 45.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tt.balance~ 3",
									"outlettype" : [ "signal", "signal", "signal", "" ],
									"patching_rect" : [ 140.0, 160.0, 318.5, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 6,
									"fontsize" : 10.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "frequency $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 530.0, 130.0, 78.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-1", 3 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-1", 4 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 5 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 2 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p OneChannelExample",
					"patching_rect" : [ 30.0, 60.0, 130.0, 20.0 ],
					"fontname" : "Arial",
					"id" : "obj-16",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"rect" : [ 50.0, 72.0, 640.0, 480.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 72.0, 640.0, 480.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startwindow",
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 300.0, 72.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"patching_rect" : [ 210.0, 240.0, 148.0, 59.0 ],
									"id" : "obj-11",
									"numinlets" : 2,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 510.0, 135.0, 50.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"patching_rect" : [ 45.0, 330.0, 45.0, 45.0 ],
									"id" : "obj-5",
									"numinlets" : 2,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number~",
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 120.0, 240.0, 85.0, 20.0 ],
									"fontname" : "Arial",
									"mode" : 2,
									"sig" : 0.0,
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~ 20",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 120.0, 135.0, 60.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 2.",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 195.0, 135.0, 45.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tt.balance~",
									"outlettype" : [ "signal", "" ],
									"patching_rect" : [ 120.0, 195.0, 68.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "frequency $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 165.0, 78.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 129.5, 225.0, 219.5, 225.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 10.0
					}

				}

			}
 ],
		"lines" : [  ]
	}

}
