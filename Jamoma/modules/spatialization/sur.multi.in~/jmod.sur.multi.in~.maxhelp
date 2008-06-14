{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 217.0, 66.0, 697.0, 551.0 ],
		"bglocked" : 0,
		"defrect" : [ 217.0, 66.0, 697.0, 551.0 ],
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
					"maxclass" : "newobj",
					"text" : "p startwindow",
					"outlettype" : [ "stop" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 121.0, 277.0, 75.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
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
									"text" : "del 2000",
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 130.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t stop",
									"outlettype" : [ "stop" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 151.0, 36.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b startwindow stop",
									"outlettype" : [ "bang", "startwindow", "stop" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 107.0, 104.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This subpatcher set audio to startwindow for a short while to illustrate what channels audio is sent to.",
									"linecount" : 2,
									"fontsize" : 9.0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"patching_rect" : [ 148.0, 50.0, 249.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 87.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-5",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 201.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 102.0, 183.0, 59.0, 183.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 144.5, 185.0, 59.0, 185.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.multi.in~",
					"fontsize" : 18.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 17.0, 19.0, 267.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Put audio signals on a multicable",
					"fontsize" : 9.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 17.0, 44.0, 292.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 12.0, 14.0, 400.0, 50.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjmod.init bang",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 121.0, 461.0, 77.0, 26.0 ],
					"numinlets" : 2,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.multi.out~",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 121.0, 338.0, 544.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 32
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim 100",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 25.0, 145.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"maximum" : 127,
					"fontsize" : 9.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 25.0, 125.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"minimum" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/channel_offset $1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 25.0, 168.0, 97.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 1.1",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 181.0, 184.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 0.75",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 166.0, 164.0, 53.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 0.2",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 151.0, 144.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 0.03",
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 136.0, 124.0, 53.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.surround.multi.in~",
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 121.0, 213.0, 255.0, 60.0 ],
					"args" : [  ],
					"numinlets" : 5,
					"id" : "obj-14",
					"name" : "jmod.sur.multi.in~.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"fontsize" : 9.0,
					"patching_rect" : [ 121.0, 297.0, 32.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 648.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-16",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 631.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-17",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 614.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-18",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 597.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-19",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 580.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-20",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 563.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-21",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 546.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-22",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 529.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-23",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 512.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-24",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 495.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-25",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 478.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-26",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 461.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-27",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 444.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-28",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 427.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-29",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 410.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-30",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 393.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-31",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-32",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 359.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-33",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 342.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-34",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 325.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-35",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 308.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-36",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 291.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-37",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 274.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-38",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 257.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-39",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 240.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-40",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 223.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-41",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 206.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-42",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 189.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-43",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 172.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-44",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 155.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-45",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 138.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-46",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 121.0, 367.0, 13.0, 77.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-47",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "NOTE: Changes in channel offset only take effext the next time audio is started.",
					"linecount" : 2,
					"fontsize" : 9.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 17.0, 76.0, 210.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-48",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 31 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 30 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 29 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 28 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 27 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 26 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 25 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 24 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 23 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 22 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 21 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 20 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 19 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 18 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 17 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 16 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 15 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 14 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 13 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 12 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 11 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 10 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 9 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 8 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 7 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 6 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 5 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 4 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 3 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-14", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 366.5, 330.0, 130.5, 330.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 199.0, 130.5, 199.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
