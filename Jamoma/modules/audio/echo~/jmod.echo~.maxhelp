{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 3.0, 44.0, 352.0, 636.0 ],
		"bglocked" : 0,
		"defrect" : [ 3.0, 44.0, 352.0, 636.0 ],
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
					"text" : "p controlling_the_module",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 605.0, 139.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-61",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 796.0, 100.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-64"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/echo/cf $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 806.0, 160.0, 184.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-63"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 911.0, 105.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-62"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tutut/cf $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 946.0, 140.0, 184.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-60"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.send jcom.remote.module.to",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 876.0, 185.0, 210.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/echo/right 750",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 876.0, 800.0, 184.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.receive jcom.remote.module.from",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 891.0, 750.0, 210.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback:/range/bounds/get",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 876.0, 710.0, 184.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback:/ramp/function power",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 876.0, 660.0, 174.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-58"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback:/ramp/function:/power/get",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 876.0, 630.0, 205.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-57"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback:/ramp/drive:/granularity:/get",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 876.0, 565.0, 214.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback:/ramp/drive:/granularity 20",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 836.0, 405.0, 205.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback:/ramp/drive:/granularity 200",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 821.0, 385.0, 211.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback:/ramp/drive scheduler",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 836.0, 350.0, 177.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback:/dump",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 901.0, 515.0, 98.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback:/ramp/drive queue",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 821.0, 325.0, 166.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-46"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback 0.8 ramp 2000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 826.0, 450.0, 138.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.echo.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 796.0, 515.0, 97.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback 0.1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 841.0, 470.0, 80.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 881.0, 240.0, 49.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/audio/gain $1 linear",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 881.0, 265.0, 116.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 771.0, 240.0, 49.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/audio/gain $1 db",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 771.0, 265.0, 101.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.echo.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 322.0, 719.0, 101.0, 19.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.attr_params.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 715.0, 374.0, 143.0 ],
									"args" : [ "/left" ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.echo.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 309.0, 374.0, 101.0, 19.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.preset_params.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 365.0, 374.0, 347.0 ],
									"args" : [ "jmod.echo~" ],
									"numinlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.echo.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 314.0, 143.0, 101.0, 19.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.gain_params.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 135.0, 374.0, 221.0 ],
									"args" : [  ],
									"numinlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"minimum" : 0,
									"triscale" : 0.9,
									"maximum" : 10000,
									"fontsize" : 10.0,
									"patching_rect" : [ 442.0, 648.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"minimum" : 0,
									"triscale" : 0.9,
									"maximum" : 10000,
									"fontsize" : 10.0,
									"patching_rect" : [ 442.0, 630.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback 0.7 ramp 5000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 614.0, 650.0, 136.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/feedback $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 651.0, 632.0, 74.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontsize" : 10.0,
									"patching_rect" : [ 614.0, 632.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/right $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 479.0, 647.0, 55.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/left $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 479.0, 630.0, 47.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "", "" ],
									"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
									"fontsize" : 10.0,
									"labelclick" : 1,
									"types" : [  ],
									"patching_rect" : [ 442.0, 667.0, 74.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /filtertype",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 515.0, 667.0, 103.0, 19.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/q 10 ramp 5000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 614.0, 727.0, 94.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/q $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 479.0, 724.0, 38.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontsize" : 10.0,
									"patching_rect" : [ 442.0, 724.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filtergain $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 479.0, 706.0, 74.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontsize" : 10.0,
									"patching_rect" : [ 442.0, 706.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filtergain 0.2 ramp 5000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 614.0, 709.0, 136.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.echo.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 699.0, 598.0, 95.0, 19.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/cf 5000 ramp 5000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 614.0, 691.0, 109.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Module specific attributes",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 14.0,
									"patching_rect" : [ 441.0, 595.0, 193.0, 24.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 437.0, 593.0, 373.0, 27.0 ],
									"numinlets" : 1,
									"rounded" : 15,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/cf $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 479.0, 688.0, 40.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontsize" : 10.0,
									"patching_rect" : [ 442.0, 688.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 437.0, 624.0, 373.0, 130.0 ],
									"numinlets" : 1,
									"rounded" : 15,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 826.0, 919.5, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-50",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-56", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 845.5, 436.0, 805.5, 436.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 830.5, 432.0, 805.5, 432.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 845.5, 375.0, 805.5, 375.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 830.5, 370.0, 805.5, 370.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 835.5, 499.0, 805.5, 499.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 850.5, 505.0, 805.5, 505.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"patching_rect" : [ 20.0, 185.0, 300.0, 140.0 ],
					"args" : [ "/input" ],
					"numinlets" : 1,
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"patching_rect" : [ 20.0, 445.0, 300.0, 140.0 ],
					"args" : [ "/output" ],
					"numinlets" : 3,
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.echo~",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"patching_rect" : [ 20.0, 20.0, 197.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "stereo echo module",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 50.0, 247.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 310.0, 70.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.echo.cmd",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 330.0, 94.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/right 750",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 425.0, 148.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"patching_rect" : [ 20.0, 95.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"numinlets" : 1,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/echo~",
					"numoutlets" : 3,
					"name" : "jmod.echo~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"patching_rect" : [ 20.0, 350.0, 300.0, 70.0 ],
					"args" : [ "/echo" ],
					"numinlets" : 3,
					"id" : "obj-36"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 422.0, 158.5, 422.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-47", 1 ],
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
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
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
 ]
	}

}
