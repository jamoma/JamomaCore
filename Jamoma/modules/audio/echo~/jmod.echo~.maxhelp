{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 264.0, 53.0, 1132.0, 789.0 ],
		"bglocked" : 0,
		"defrect" : [ 264.0, 53.0, 1132.0, 789.0 ],
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
					"text" : "/feedback:/range/bounds/get",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-42",
					"numoutlets" : 1,
					"patching_rect" : [ 830.0, 650.0, 184.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback:/ramp/function power",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-58",
					"numoutlets" : 1,
					"patching_rect" : [ 830.0, 600.0, 174.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback:/ramp/function:/power/get",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-57",
					"numoutlets" : 1,
					"patching_rect" : [ 830.0, 570.0, 205.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback:/ramp/drive:/granularity:/get",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-54",
					"numoutlets" : 1,
					"patching_rect" : [ 830.0, 505.0, 214.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback:/ramp/drive:/granularity 20",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-53",
					"numoutlets" : 1,
					"patching_rect" : [ 790.0, 345.0, 205.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback:/ramp/drive:/granularity 200",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-52",
					"numoutlets" : 1,
					"patching_rect" : [ 775.0, 325.0, 211.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback:/ramp/drive scheduler",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-51",
					"numoutlets" : 1,
					"patching_rect" : [ 790.0, 285.0, 177.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-50",
					"numoutlets" : 0,
					"patching_rect" : [ 735.0, 485.0, 34.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback:/dump",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-49",
					"numoutlets" : 1,
					"patching_rect" : [ 855.0, 455.0, 98.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback:/ramp/drive queue",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-46",
					"numoutlets" : 1,
					"patching_rect" : [ 775.0, 265.0, 166.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback 0.8 ramp 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-45",
					"numoutlets" : 1,
					"patching_rect" : [ 780.0, 390.0, 138.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.echo.cmd",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-44",
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 455.0, 97.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback 0.1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-43",
					"numoutlets" : 1,
					"patching_rect" : [ 795.0, 410.0, 80.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-31",
					"numoutlets" : 2,
					"patching_rect" : [ 835.0, 180.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/gain $1 linear",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-40",
					"numoutlets" : 1,
					"patching_rect" : [ 835.0, 205.0, 116.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-41",
					"numoutlets" : 2,
					"patching_rect" : [ 725.0, 180.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/gain $1 db",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-35",
					"numoutlets" : 1,
					"patching_rect" : [ 725.0, 205.0, 101.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"id" : "obj-48",
					"name" : "jmod.input~.maxpat",
					"numoutlets" : 3,
					"patching_rect" : [ 400.0, 80.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 3,
					"id" : "obj-47",
					"name" : "jmod.output~.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 380.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/output" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.echo.cmd",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 276.0, 659.0, 101.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"id" : "obj-2",
					"name" : "jmod.attr_params.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 5.0, 655.0, 374.0, 143.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/left" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.echo.cmd",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 263.0, 314.0, 101.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"id" : "obj-4",
					"name" : "jmod.preset_params.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 4.0, 305.0, 374.0, 347.0 ],
					"outlettype" : [ "" ],
					"args" : [ "jmod.echo~" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.echo.cmd",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 268.0, 83.0, 101.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"id" : "obj-6",
					"name" : "jmod.gain_params.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 5.0, 75.0, 374.0, 221.0 ],
					"outlettype" : [ "" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"minimum" : 0,
					"numinlets" : 1,
					"id" : "obj-7",
					"maximum" : 10000,
					"numoutlets" : 2,
					"patching_rect" : [ 396.0, 588.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"minimum" : 0,
					"numinlets" : 1,
					"id" : "obj-8",
					"maximum" : 10000,
					"numoutlets" : 2,
					"patching_rect" : [ 396.0, 570.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback 0.7 ramp 5000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-9",
					"numoutlets" : 1,
					"patching_rect" : [ 568.0, 590.0, 136.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 1,
					"patching_rect" : [ 605.0, 572.0, 74.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 2,
					"patching_rect" : [ 568.0, 572.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/right $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-12",
					"numoutlets" : 1,
					"patching_rect" : [ 433.0, 587.0, 55.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/left $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-13",
					"numoutlets" : 1,
					"patching_rect" : [ 433.0, 570.0, 47.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.echo~",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 9.0, 19.0, 197.0, 28.0 ],
					"fontsize" : 18.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "stereo echo module",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 10.0, 45.0, 247.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 3.0, 374.0, 68.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 396.0, 607.0, 74.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /filtertype",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 469.0, 607.0, 103.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/q 10 ramp 5000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-19",
					"numoutlets" : 1,
					"patching_rect" : [ 568.0, 667.0, 94.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/q $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-20",
					"numoutlets" : 1,
					"patching_rect" : [ 433.0, 664.0, 38.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-21",
					"numoutlets" : 2,
					"patching_rect" : [ 396.0, 664.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/filtergain $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-22",
					"numoutlets" : 1,
					"patching_rect" : [ 433.0, 646.0, 74.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 2,
					"patching_rect" : [ 396.0, 646.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/filtergain 0.2 ramp 5000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-24",
					"numoutlets" : 1,
					"patching_rect" : [ 568.0, 649.0, 136.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.echo.cmd",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 653.0, 538.0, 95.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.echo.cmd",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"id" : "obj-26",
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 230.0, 94.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/cf 5000 ramp 5000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-27",
					"numoutlets" : 1,
					"patching_rect" : [ 568.0, 631.0, 109.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module specific attributes",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 395.0, 535.0, 193.0, 24.0 ],
					"fontsize" : 14.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-29",
					"numoutlets" : 0,
					"patching_rect" : [ 391.0, 533.0, 373.0, 27.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 470.0, 330.0, 74.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-32",
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 355.0, 202.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 330.0, 68.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"numinlets" : 1,
					"id" : "obj-34",
					"name" : "jmod.control.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 5.0, 154.0, 72.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/control" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/echo~",
					"numinlets" : 3,
					"id" : "obj-36",
					"name" : "jmod.echo~.maxpat",
					"numoutlets" : 3,
					"patching_rect" : [ 400.0, 255.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/echo" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/cf $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-37",
					"numoutlets" : 1,
					"patching_rect" : [ 433.0, 628.0, 40.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-38",
					"numoutlets" : 2,
					"patching_rect" : [ 396.0, 628.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-39",
					"numoutlets" : 0,
					"patching_rect" : [ 391.0, 564.0, 373.0, 130.0 ],
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [ 479.5, 351.0, 409.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 2 ],
					"destination" : [ "obj-47", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 804.5, 445.0, 759.5, 445.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 789.5, 439.0, 759.5, 439.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 784.5, 310.0, 759.5, 310.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 799.5, 315.0, 759.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 784.5, 372.0, 759.5, 372.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 799.5, 376.0, 759.5, 376.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [ 550.0, 331.0, 615.0, 331.0, 615.0, 376.0, 550.0, 376.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
