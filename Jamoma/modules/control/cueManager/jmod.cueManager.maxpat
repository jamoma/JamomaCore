{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 46.0, 44.0, 1235.0, 786.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"defrect" : [ 46.0, 44.0, 1235.0, 786.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"patching_rect" : [ 35.0, 125.0, 251.0, 17.0 ],
					"id" : "obj-64",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"patching_rect" : [ 60.0, 145.0, 159.0, 17.0 ],
					"id" : "obj-66",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 1",
					"patching_rect" : [ 163.0, 749.0, 25.0, 18.0 ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message previousCue @repetitions/allow 1 @type msg_none @description \"dump the next cue\"",
					"linecount" : 2,
					"patching_rect" : [ 10.0, 715.0, 262.0, 29.0 ],
					"id" : "obj-49",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"patching_rect" : [ 130.0, 750.0, 32.5, 18.0 ],
					"id" : "obj-61",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"patching_rect" : [ 158.0, 689.0, 25.0, 18.0 ],
					"id" : "obj-59",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message nextCue @repetitions/allow 1 @type msg_none @description \"dump the next cue\"",
					"linecount" : 2,
					"patching_rect" : [ 10.0, 655.0, 242.0, 29.0 ],
					"id" : "obj-58",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"patching_rect" : [ 125.0, 690.0, 32.5, 18.0 ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"patching_rect" : [ 770.0, 595.0, 50.0, 16.0 ],
					"id" : "obj-51",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 2",
					"patching_rect" : [ 913.0, 501.0, 78.0, 18.0 ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 250",
					"patching_rect" : [ 807.0, 545.0, 54.0, 18.0 ],
					"id" : "obj-56",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bgcolor 0.21 0.7 0.7 1.",
					"patching_rect" : [ 856.0, 524.0, 110.0, 16.0 ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0, bgcolor 0.21 0.21 0.21 1.",
					"linecount" : 2,
					"patching_rect" : [ 719.0, 524.0, 87.0, 27.0 ],
					"id" : "obj-53",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b i b",
					"patching_rect" : [ 807.0, 523.0, 46.0, 18.0 ],
					"id" : "obj-52",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message save @type msg_generic @description \"save the cues in the last file\"",
					"patching_rect" : [ 821.0, 667.0, 385.0, 18.0 ],
					"id" : "obj-50",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "PB : le hub ne prend pas en compte le symbol du nom !!??",
					"linecount" : 2,
					"patching_rect" : [ 84.0, 302.0, 150.0, 29.0 ],
					"id" : "obj-45",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.827451, 0.043137, 0.043137, 1.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.827451, 0.043137, 0.043137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "TODO : fix a bug with the hub",
					"patching_rect" : [ 84.0, 284.0, 150.0, 18.0 ],
					"id" : "obj-39",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.827451, 0.043137, 0.043137, 1.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.827451, 0.043137, 0.043137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass copy @strip 0",
					"patching_rect" : [ 107.0, 260.0, 120.0, 18.0 ],
					"id" : "obj-38",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 766.0, 184.0, 37.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-44",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"minimum" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "bang" ],
					"maximum" : 6,
					"presentation_rect" : [ 150.0, 50.0, 35.0, 20.0 ],
					"bgcolor" : [ 0.4, 0.4, 0.4, 0.776471 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p prepare_UI",
					"patching_rect" : [ 696.0, 148.0, 69.0, 18.0 ],
					"id" : "obj-43",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 35.0, 402.0, 186.0, 220.0 ],
						"bglocked" : 0,
						"defrect" : [ 35.0, 402.0, 186.0, 220.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 87.0, 114.0, 32.5, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 87.0, 183.0, 25.0, 25.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"patching_rect" : [ 87.0, 88.0, 39.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "maximum $1",
									"linecount" : 2,
									"patching_rect" : [ 87.0, 142.0, 64.0, 32.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route NO-CUE",
									"patching_rect" : [ 17.0, 61.0, 89.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"patching_rect" : [ 17.0, 37.0, 57.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 17.0, 10.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 172.0, 612.0, 37.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-42",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"minimum" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "bang" ],
					"maximum" : 5,
					"presentation_rect" : [ 115.0, 25.0, 34.0, 20.0 ],
					"bgcolor" : [ 0.4, 0.4, 0.4, 0.776471 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"patching_rect" : [ 578.0, 533.0, 49.0, 18.0 ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 0",
					"patching_rect" : [ 578.0, 555.0, 46.0, 18.0 ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bgcolor 0.2 0.0.5 0.1 1",
					"patching_rect" : [ 578.0, 579.0, 110.0, 16.0 ],
					"id" : "obj-46",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter getStateMode @type msg_toggle @repetitions/allow 1 @description \"getState mode\"",
					"linecount" : 2,
					"patching_rect" : [ 470.0, 494.0, 241.0, 29.0 ],
					"id" : "obj-37",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dump @repetitions/allow 1 @type msg_int @description \"dump a cue\"",
					"patching_rect" : [ 269.0, 690.0, 389.0, 18.0 ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter live @type msg_toggle @repetitions/allow 0 @description \"getState mode\"",
					"linecount" : 2,
					"patching_rect" : [ 470.0, 431.0, 241.0, 29.0 ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 470.0, 406.0, 32.0, 18.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 1,
					"texton" : "live",
					"numoutlets" : 3,
					"mode" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "cue",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.568627 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-live",
					"patching_rect" : [ 581.0, 461.0, 72.0, 20.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-to_jalg",
					"patching_rect" : [ 104.0, 407.0, 70.0, 18.0 ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/remove ALL-CUES",
					"patching_rect" : [ 862.0, 587.0, 98.0, 16.0 ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-to_jalg",
					"patching_rect" : [ 862.0, 606.0, 71.0, 18.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0 1 2 3",
					"patching_rect" : [ 821.0, 567.0, 73.0, 18.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "bang", "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 807.0, 501.0, 100.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1,
					"arrow" : 0,
					"numoutlets" : 3,
					"pattrmode" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 226.0, 1.0, 49.0, 18.0 ],
					"types" : [  ],
					"items" : [ "Save", ",", "SaveAs", ",", "Load", ",", "New" ],
					"bgcolor" : [ 0.21, 0.21, 0.21, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b s",
					"patching_rect" : [ 873.0, 205.0, 32.5, 18.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /copy /remove /rename",
					"patching_rect" : [ 241.0, 260.0, 178.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 4,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %s",
					"patching_rect" : [ 873.0, 185.0, 54.0, 18.0 ],
					"id" : "obj-62",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "symbol cue_2",
					"patching_rect" : [ 873.0, 147.0, 84.0, 16.0 ],
					"id" : "obj-60",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dialog Cue name",
					"patching_rect" : [ 873.0, 165.0, 86.0, 18.0 ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 269.0, 663.0, 100.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-41",
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 0.568627 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 150.0, 25.0, 145.0, 20.0 ],
					"types" : [  ],
					"items" : "Cue___Menu",
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 0.568627 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 0.690196 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /listCue /currentCueId /currentCueName /currentCueMode /getStateMode",
					"patching_rect" : [ 8.0, 434.0, 402.0, 18.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 6,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter listCue @type msg_list @repetitions/allow 1 @description \"the cues name list\"",
					"linecount" : 2,
					"patching_rect" : [ 8.0, 493.0, 273.0, 29.0 ],
					"id" : "obj-135",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message rename @type msg_list @repetitions/allow 1 @description \"rename a cue\"",
					"linecount" : 2,
					"patching_rect" : [ 347.0, 353.0, 277.0, 29.0 ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message remove @type msg_int @repetitions/allow 1 @description \"remove a cue\"",
					"linecount" : 2,
					"patching_rect" : [ 294.0, 321.0, 274.0, 29.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message copy @type msg_list @repetitions/allow 1 @description \"copy a cue (insert)\"",
					"linecount" : 2,
					"patching_rect" : [ 241.0, 289.0, 264.0, 29.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message load @type msg_symbol @description \"load a cuelist file\"",
					"patching_rect" : [ 848.0, 627.0, 355.0, 18.0 ],
					"id" : "obj-40",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"patching_rect" : [ 767.0, 70.0, 22.0, 18.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"patching_rect" : [ 463.0, 67.0, 22.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p prepare_UI",
					"patching_rect" : [ 8.0, 579.0, 69.0, 18.0 ],
					"id" : "obj-141",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "clear", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 35.0, 402.0, 203.0, 342.0 ],
						"bglocked" : 0,
						"defrect" : [ 35.0, 402.0, 203.0, 342.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 130.0, 258.0, 25.0, 25.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"patching_rect" : [ 130.0, 130.0, 39.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "maximum $1",
									"linecount" : 2,
									"patching_rect" : [ 130.0, 184.0, 64.0, 32.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"patching_rect" : [ 17.0, 86.0, 24.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route NO-CUE",
									"patching_rect" : [ 17.0, 61.0, 89.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"patching_rect" : [ 17.0, 37.0, 57.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 61.0, 258.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 17.0, 10.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route bang set",
									"patching_rect" : [ 17.0, 192.0, 74.0, 18.0 ],
									"id" : "obj-136",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$2",
									"patching_rect" : [ 17.0, 173.0, 32.5, 16.0 ],
									"id" : "obj-137",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "listfunnel",
									"patching_rect" : [ 17.0, 152.0, 50.0, 18.0 ],
									"id" : "obj-138",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "list" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l Cue___Menu clear",
									"patching_rect" : [ 17.0, 131.0, 106.0, 18.0 ],
									"id" : "obj-139",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "", "Cue___Menu", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "append $1",
									"patching_rect" : [ 61.0, 232.0, 58.0, 16.0 ],
									"id" : "obj-140",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-136", 2 ],
									"destination" : [ "obj-140", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-137", 0 ],
									"destination" : [ "obj-136", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-139", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-140", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-138", 0 ],
									"destination" : [ "obj-137", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-139", 0 ],
									"destination" : [ "obj-138", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-139", 1 ],
									"destination" : [ "obj-140", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-139", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-139", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter currentCueName @type msg_symbol @repetitions/allow 1 @description \"the name of the current cue\"",
					"linecount" : 2,
					"patching_rect" : [ 161.0, 563.0, 343.0, 29.0 ],
					"id" : "obj-130",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter currentCueId @type msg_int @repetitions/allow 1 @description \"the index of the current cue\"",
					"linecount" : 2,
					"patching_rect" : [ 85.0, 527.0, 304.0, 29.0 ],
					"id" : "obj-129",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message store/asNextStep @type msg_int @range/bounds 0 @repetitions/allow 1 @description \"store the state of the patch after the current cue (insert)\"",
					"linecount" : 2,
					"patching_rect" : [ 765.0, 457.0, 401.0, 29.0 ],
					"id" : "obj-127",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"patching_rect" : [ 766.0, 208.0, 38.0, 16.0 ],
					"id" : "obj-117",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack i s",
					"patching_rect" : [ 766.0, 243.0, 74.0, 18.0 ],
					"id" : "obj-113",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p prepare_next",
					"patching_rect" : [ 766.0, 147.0, 91.0, 20.0 ],
					"id" : "obj-111",
					"fontname" : "Arial",
					"numinlets" : 0,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 843.0, 174.0, 277.0, 238.0 ],
						"bglocked" : 0,
						"defrect" : [ 843.0, 174.0, 277.0, 238.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"patching_rect" : [ 51.0, 119.0, 32.5, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"patching_rect" : [ 51.0, 97.0, 56.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"patching_rect" : [ 51.0, 75.0, 60.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"patching_rect" : [ 182.0, 159.0, 82.0, 18.0 ],
									"id" : "obj-61",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 37.0, 181.0, 28.0, 28.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 38.0, 44.0, 32.5, 18.0 ],
									"id" : "obj-56",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"patching_rect" : [ 37.0, 160.0, 63.0, 18.0 ],
									"id" : "obj-63",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-currentCueId",
									"patching_rect" : [ 38.0, 15.0, 98.0, 18.0 ],
									"id" : "obj-62",
									"fontname" : "Arial",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 182.0, 179.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 182.0, 110.0, 32.5, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"patching_rect" : [ 133.0, 86.0, 32.5, 18.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route bang",
									"patching_rect" : [ 133.0, 46.0, 68.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf cue_%ld",
									"patching_rect" : [ 182.0, 135.0, 93.0, 20.0 ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-listCue",
									"patching_rect" : [ 133.0, 14.0, 83.0, 20.0 ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"patching_rect" : [ 182.0, 88.0, 39.0, 20.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message store/as @type msg_list @repetitions/allow 1 @description \"store the state of the patch after the current cue (insert)\"",
					"linecount" : 2,
					"patching_rect" : [ 766.0, 263.0, 324.0, 29.0 ],
					"id" : "obj-107",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 874.0, 119.0, 24.0, 21.0 ],
					"presentation" : 1,
					"id" : "obj-106",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "as ",
					"presentation_rect" : [ 120.0, 50.0, 24.0, 21.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.568627 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 765.0, 307.0, 62.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-105",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "as next",
					"presentation_rect" : [ 57.0, 50.0, 54.0, 20.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.568627 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message store/asNext @type msg_generic @description \"store the state of the patch after the current cue (insert)\"",
					"linecount" : 2,
					"patching_rect" : [ 765.0, 331.0, 290.0, 29.0 ],
					"id" : "obj-104",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 767.0, 15.0, 62.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-101",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "store",
					"presentation_rect" : [ 5.0, 50.0, 50.0, 20.0 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 0.57 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message store @type msg_generic @description \"store the state of the patch in the current cue (replace)\"",
					"linecount" : 2,
					"patching_rect" : [ 767.0, 39.0, 261.0, 29.0 ],
					"id" : "obj-99",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message saveAs @type msg_generic @description \"save the cues in a file\"",
					"patching_rect" : [ 835.0, 647.0, 370.0, 18.0 ],
					"id" : "obj-97",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message view @type msg_generic @description \"view the current cue\"",
					"linecount" : 2,
					"patching_rect" : [ 462.0, 137.0, 195.0, 29.0 ],
					"id" : "obj-93",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 470.0, 532.0, 69.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-92",
					"fontname" : "Arial",
					"numinlets" : 1,
					"texton" : "absolute",
					"numoutlets" : 3,
					"mode" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "differential",
					"presentation_rect" : [ 223.0, 50.0, 71.0, 19.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.568627 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 462.0, 109.0, 55.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-91",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "view cue",
					"presentation_rect" : [ 57.0, 25.0, 55.0, 20.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.568627 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 463.0, 9.0, 51.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-90",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "edit cue",
					"presentation_rect" : [ 5.0, 25.0, 51.0, 20.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.568627 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message edit @type msg_generic @description \"edit the current cue\"",
					"linecount" : 2,
					"patching_rect" : [ 463.0, 37.0, 188.0, 29.0 ],
					"id" : "obj-89",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"patching_rect" : [ 225.0, 150.0, 42.0, 18.0 ],
					"id" : "obj-65",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter currentCueMode @type msg_toggle @repetitions/allow 1 @description \"getState mode of the current cue\"",
					"linecount" : 2,
					"patching_rect" : [ 238.0, 599.0, 319.0, 29.0 ],
					"id" : "obj-63",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_rampTime",
					"patching_rect" : [ 910.0, 419.0, 89.0, 18.0 ],
					"id" : "obj-85",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_ramp",
					"patching_rect" : [ 848.0, 419.0, 67.0, 18.0 ],
					"id" : "obj-84",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p cue_inspector",
					"patching_rect" : [ 241.0, 225.0, 100.0, 18.0 ],
					"id" : "obj-83",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 622.0, 54.0, 321.0, 746.0 ],
						"bglocked" : 0,
						"defrect" : [ 622.0, 54.0, 321.0, 746.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 130.0, 370.0, 37.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-44",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"minimum" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int", "bang" ],
									"presentation_rect" : [ 85.0, 5.0, 35.0, 20.0 ],
									"bgcolor" : [ 0.4, 0.4, 0.4, 0.776471 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "/rename old_name new_name",
									"patching_rect" : [ 260.0, 565.0, 150.0, 18.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "/remove id",
									"patching_rect" : [ 260.0, 545.0, 150.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "/copy src_id dst_id dst_name",
									"patching_rect" : [ 260.0, 525.0, 150.0, 18.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send command to the hub to work with the jalg.cuelistfile",
									"linecount" : 2,
									"patching_rect" : [ 260.0, 494.0, 140.0, 29.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 230.0, 526.0, 25.0, 25.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p oldGetState",
									"patching_rect" : [ 723.0, 160.0, 100.0, 18.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 0,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 296.0, 381.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 296.0, 381.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "open",
													"patching_rect" : [ 208.0, 303.0, 33.0, 16.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "editwith textedit",
													"patching_rect" : [ 163.0, 278.0, 79.0, 16.0 ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "9380",
													"patching_rect" : [ 118.0, 303.0, 50.0, 16.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "query",
													"patching_rect" : [ 138.0, 243.0, 50.0, 16.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 78.0, 238.0, 46.0, 18.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "text",
													"patching_rect" : [ 98.0, 273.0, 46.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 10.0,
													"outlettype" : [ "", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t open",
													"patching_rect" : [ 55.0, 185.0, 38.0, 18.0 ],
													"id" : "obj-45",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "open" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 78.0, 213.0, 46.0, 18.0 ],
													"id" : "obj-42",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Get State and Edit",
													"linecount" : 2,
													"presentation_linecount" : 2,
													"patching_rect" : [ 88.0, 103.0, 63.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-98",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0,
													"presentation_rect" : [ 90.0, 25.0, 63.0, 34.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 50.0, 100.0, 38.0, 38.0 ],
													"presentation" : 1,
													"id" : "obj-41",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"presentation_rect" : [ 52.0, 22.0, 38.0, 38.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 65.0, 160.0, 125.0, 20.0 ],
													"id" : "obj-90",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p get_state",
													"patching_rect" : [ 63.0, 138.0, 65.0, 18.0 ],
													"id" : "obj-65",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 3,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "clear", "clear" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 184.0, 355.0, 319.0, 298.0 ],
														"bglocked" : 0,
														"defrect" : [ 184.0, 355.0, 319.0, 298.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 235.0, 95.0, 24.0, 24.0 ],
																	"id" : "obj-17",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 240.0, 180.0, 25.0, 25.0 ],
																	"id" : "obj-16",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 210.0, 180.0, 25.0, 25.0 ],
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set Edit, bang",
																	"patching_rect" : [ 11.0, 228.0, 80.0, 17.0 ],
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 10.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s to_select_Menu",
																	"patching_rect" : [ 11.0, 246.0, 98.0, 19.0 ],
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s to_edit",
																	"patching_rect" : [ 59.0, 193.0, 54.0, 19.0 ],
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "get_state",
																	"patching_rect" : [ 59.0, 175.0, 58.0, 17.0 ],
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 10.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b b b",
																	"patching_rect" : [ 45.0, 106.0, 46.0, 19.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 10.0,
																	"outlettype" : [ "bang", "bang", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "##############################",
																	"patching_rect" : [ 72.0, 146.0, 211.0, 18.0 ],
																	"id" : "obj-7",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "deferlow",
																	"patching_rect" : [ 45.0, 76.0, 53.0, 19.0 ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend get_state",
																	"patching_rect" : [ 130.0, 216.0, 103.0, 19.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p ENTETE",
																	"patching_rect" : [ 113.0, 78.0, 59.0, 19.0 ],
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0,
																	"outlettype" : [ "cr" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 73.0, 109.0, 259.0, 250.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 73.0, 109.0, 259.0, 250.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "##############################",
																					"patching_rect" : [ 27.0, 106.0, 211.0, 18.0 ],
																					"id" : "obj-4",
																					"fontname" : "Arial",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 12.0,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b cr cr",
																					"patching_rect" : [ 27.0, 61.0, 51.0, 20.0 ],
																					"id" : "obj-3",
																					"fontname" : "Arial",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"fontsize" : 12.0,
																					"outlettype" : [ "bang", "cr", "cr" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 27.0, 217.0, 25.0, 25.0 ],
																					"id" : "obj-2",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 27.0, 25.0, 25.0, 25.0 ],
																					"id" : "obj-1",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 1 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 2 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"fontname" : "Arial",
																		"default_fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontsize" : 12.0,
																		"fontface" : 0,
																		"fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 130.0, 260.0, 25.0, 25.0 ],
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b b b clear",
																	"patching_rect" : [ 78.0, 43.0, 71.0, 19.0 ],
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontsize" : 10.0,
																	"outlettype" : [ "bang", "bang", "bang", "clear" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p get_parameter_values",
																	"patching_rect" : [ 95.0, 123.0, 159.0, 18.0 ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "cr" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 141.0, 193.0, 527.0, 555.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 141.0, 193.0, 527.0, 555.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate",
																					"patching_rect" : [ 70.0, 430.0, 44.0, 19.0 ],
																					"id" : "obj-10",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 350.0, 310.0, 15.0, 15.0 ],
																					"id" : "obj-5",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p attr",
																					"patching_rect" : [ 70.0, 455.0, 43.0, 19.0 ],
																					"id" : "obj-27",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "cr" ],
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 483.0, 44.0, 401.0, 369.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 483.0, 44.0, 401.0, 369.0 ],
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
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "t l tab tab tab tab tab tab cr",
																									"linecount" : 2,
																									"patching_rect" : [ 50.0, 260.0, 112.0, 31.0 ],
																									"id" : "obj-24",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 8,
																									"fontsize" : 10.0,
																									"outlettype" : [ "", "tab", "tab", "tab", "tab", "tab", "tab", "cr" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"patching_rect" : [ 95.0, 310.0, 19.0, 19.0 ],
																									"id" : "obj-20",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "t b s b",
																									"patching_rect" : [ 45.0, 65.0, 40.0, 18.0 ],
																									"id" : "obj-2",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 3,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "bang", "", "bang" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 60.0, 0.0, 20.0, 20.0 ],
																									"id" : "obj-1",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"outlettype" : [ "" ],
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "name jcom.remote.module.from",
																									"patching_rect" : [ 80.0, 199.0, 170.0, 16.0 ],
																									"id" : "obj-5",
																									"fontname" : "Verdana",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "" ],
																									"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "name \"that deaf dumb and blind kid\"",
																									"patching_rect" : [ 50.0, 180.0, 193.0, 16.0 ],
																									"id" : "obj-10",
																									"fontname" : "Verdana",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "" ],
																									"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "jcom.receive \"that deaf dumb and blind kid\"",
																									"patching_rect" : [ 50.0, 225.0, 228.0, 18.0 ],
																									"id" : "obj-22",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 2,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "", "" ],
																									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "jcom.send jcom.remote.module.to",
																									"linecount" : 2,
																									"patching_rect" : [ 61.0, 119.0, 125.0, 30.0 ],
																									"id" : "obj-25",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 1,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "" ],
																									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "sprintf %s:/dump",
																									"patching_rect" : [ 60.0, 95.0, 193.0, 18.0 ],
																									"id" : "obj-26",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 1,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "" ]
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-2", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 7 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 6 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 5 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 4 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 3 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 2 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 1 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 0 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-22", 0 ],
																									"destination" : [ "obj-24", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-22", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-10", 0 ],
																									"destination" : [ "obj-22", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-26", 0 ],
																									"destination" : [ "obj-25", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 1 ],
																									"destination" : [ "obj-26", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 2 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-10", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
																						"default_fontface" : 0,
																						"fontname" : "Arial",
																						"default_fontname" : "Arial",
																						"globalpatchername" : "",
																						"default_fontsize" : 10.0,
																						"fontface" : 0,
																						"fontsize" : 10.0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t l tab tab tab tab cr",
																					"patching_rect" : [ 123.0, 454.0, 112.0, 19.0 ],
																					"id" : "obj-24",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 6,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "tab", "tab", "tab", "tab", "cr" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t l cr cr",
																					"patching_rect" : [ 273.0, 418.0, 47.0, 19.0 ],
																					"id" : "obj-23",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "cr", "cr" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b s b",
																					"patching_rect" : [ 165.0, 90.0, 40.0, 18.0 ],
																					"id" : "obj-1",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "bang", "", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "This stops jcom.receive from listening if we are not currently requesting the names of all modules.",
																					"linecount" : 3,
																					"patching_rect" : [ 367.0, 190.0, 210.0, 42.0 ],
																					"id" : "obj-2",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																					"fontsize" : 9.873845
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "name jcom.remote.module.from",
																					"patching_rect" : [ 195.0, 214.0, 170.0, 16.0 ],
																					"id" : "obj-3",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ],
																					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "name \"that deaf dumb and blind kid\"",
																					"patching_rect" : [ 165.0, 195.0, 193.0, 16.0 ],
																					"id" : "obj-4",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ],
																					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl join",
																					"patching_rect" : [ 123.0, 434.0, 113.0, 18.0 ],
																					"id" : "obj-6",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl slice 1",
																					"patching_rect" : [ 185.0, 366.0, 51.0, 18.0 ],
																					"id" : "obj-7",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sprintf %s%s",
																					"patching_rect" : [ 123.0, 406.0, 81.0, 18.0 ],
																					"id" : "obj-8",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b l",
																					"patching_rect" : [ 165.0, 337.0, 28.0, 18.0 ],
																					"id" : "obj-9",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "bang", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t s s s",
																					"patching_rect" : [ 165.0, 47.0, 40.0, 18.0 ],
																					"id" : "obj-11",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl reg",
																					"patching_rect" : [ 123.0, 373.0, 36.0, 18.0 ],
																					"id" : "obj-12",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "jcom.oscroute /parameter_value",
																					"patching_rect" : [ 165.0, 309.0, 171.0, 18.0 ],
																					"id" : "obj-13",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sprintf # Module %s",
																					"patching_rect" : [ 273.0, 366.0, 112.0, 18.0 ],
																					"id" : "obj-14",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "jcom.receive \"that deaf dumb and blind kid\"",
																					"patching_rect" : [ 165.0, 240.0, 228.0, 18.0 ],
																					"id" : "obj-15",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "" ],
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "jcom.oscroute /*",
																					"patching_rect" : [ 165.0, 280.0, 93.0, 18.0 ],
																					"id" : "obj-16",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "jcom.send jcom.remote.module.to",
																					"linecount" : 2,
																					"patching_rect" : [ 176.0, 134.0, 125.0, 30.0 ],
																					"id" : "obj-17",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ],
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sprintf %s/parameter_values:/dump",
																					"patching_rect" : [ 176.0, 115.0, 193.0, 18.0 ],
																					"id" : "obj-18",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 165.0, 27.0, 15.0, 15.0 ],
																					"id" : "obj-19",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 231.0, 511.0, 19.0, 19.0 ],
																					"id" : "obj-20",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "This part introduce a comment to mark the beginning of a new module",
																					"linecount" : 2,
																					"patching_rect" : [ 289.0, 386.0, 192.0, 30.0 ],
																					"id" : "obj-21",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																					"fontsize" : 9.873845
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 2 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 1 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 2 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 1 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-17", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 1 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 2 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 1 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 1 ],
																					"destination" : [ "obj-12", 1 ],
																					"hidden" : 0,
																					"midpoints" : [ 185.0, 82.0, 149.5, 82.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-27", 0 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 79.5, 498.0, 240.5, 498.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 0 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 1 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 2 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 3 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 4 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-24", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 5 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-10", 0 ],
																					"destination" : [ "obj-27", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-10", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"fontname" : "Verdana",
																		"default_fontname" : "Verdana",
																		"globalpatchername" : "",
																		"default_fontsize" : 10.0,
																		"fontface" : 0,
																		"fontsize" : 10.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p get_names_of_modules",
																	"patching_rect" : [ 95.0, 101.0, 137.0, 18.0 ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 771.0, 140.0, 209.0, 252.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 771.0, 140.0, 209.0, 252.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "route symbol",
																					"patching_rect" : [ 54.0, 152.0, 100.0, 19.0 ],
																					"id" : "obj-22",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl reg",
																					"patching_rect" : [ 54.0, 124.0, 54.0, 19.0 ],
																					"id" : "obj-21",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sel 1",
																					"patching_rect" : [ 54.0, 96.0, 34.0, 19.0 ],
																					"id" : "obj-20",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 10.0,
																					"outlettype" : [ "bang", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t dump",
																					"patching_rect" : [ 54.5, 40.0, 46.0, 19.0 ],
																					"id" : "obj-19",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "dump" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "coll jcom.Cue_Modules 1",
																					"patching_rect" : [ 54.0, 68.0, 114.0, 17.0 ],
																					"id" : "obj-18",
																					"fontname" : "Arial",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontsize" : 9.242982,
																					"outlettype" : [ "", "", "", "" ],
																					"saved_object_attributes" : 																					{
																						"embed" : 0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 54.5, 20.0, 15.0, 15.0 ],
																					"id" : "obj-12",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 54.0, 180.0, 15.0, 15.0 ],
																					"id" : "obj-13",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-22", 0 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-22", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 0 ],
																					"destination" : [ "obj-21", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 1 ],
																					"destination" : [ "obj-21", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-19", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"fontname" : "Verdana",
																		"default_fontname" : "Verdana",
																		"globalpatchername" : "",
																		"default_fontsize" : 10.0,
																		"fontface" : 0,
																		"fontsize" : 10.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 78.0, 15.0, 24.0, 24.0 ],
																	"id" : "obj-6",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 3 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 2 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 3 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 3 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-2", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-90", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 1 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_getAttr",
									"patching_rect" : [ 360.0, 130.0, 100.0, 18.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "parameters",
									"patching_rect" : [ 485.0, 60.0, 61.0, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"varname" : "modules[1]",
									"patching_rect" : [ 475.0, 85.0, 162.0, 186.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 4,
									"rows" : 1,
									"selmode" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "list", "", "", "" ],
									"hcellcolor" : [ 1.0, 0.784314, 0.784314, 255.0 ],
									"cols" : 2,
									"hscroll" : 0,
									"outmode" : 1,
									"colwidth" : 120,
									"rowdef" : [ [ 0, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 5, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 4, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 3, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 1, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 2, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Get attributes",
									"patching_rect" : [ 385.0, 95.0, 83.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"presentation_rect" : [ 190.0, 35.0, 83.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0",
									"patching_rect" : [ 360.0, 65.0, 62.0, 18.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 360.0, 95.0, 20.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"presentation_rect" : [ 166.0, 33.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 13",
									"patching_rect" : [ 176.0, 436.0, 37.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf set copy_of_%s",
									"patching_rect" : [ 190.0, 340.0, 118.0, 18.0 ],
									"id" : "obj-76",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"patching_rect" : [ 130.0, 340.0, 58.5, 18.0 ],
									"id" : "obj-75",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t select",
									"patching_rect" : [ 144.0, 397.0, 45.0, 18.0 ],
									"id" : "obj-70",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "select" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p operations",
									"patching_rect" : [ 29.0, 470.0, 220.0, 18.0 ],
									"id" : "obj-60",
									"fontname" : "Arial",
									"numinlets" : 5,
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 639.0, 341.0, 587.0, 410.0 ],
										"bglocked" : 0,
										"defrect" : [ 639.0, 341.0, 587.0, 410.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend /remove",
													"patching_rect" : [ 440.0, 145.0, 86.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"patching_rect" : [ 339.0, 66.0, 51.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"patching_rect" : [ 148.0, 228.0, 32.5, 18.0 ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 468.0, 355.0, 39.0, 39.0 ],
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 172.0, 385.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "send #0_cuenr 0 $1 ",
													"patching_rect" : [ 172.0, 178.0, 108.0, 16.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"patching_rect" : [ 315.0, 39.0, 52.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 35.0, 385.0, 15.0, 15.0 ],
													"id" : "obj-54",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack /copy 0 0 s",
													"patching_rect" : [ 234.0, 119.0, 100.0, 18.0 ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"numinlets" : 4,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"patching_rect" : [ 440.0, 36.0, 22.0, 18.0 ],
													"id" : "obj-47",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"patching_rect" : [ 440.0, 118.0, 32.5, 20.0 ],
													"id" : "obj-44",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 11.595187,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 440.0, 5.0, 16.0, 16.0 ],
													"id" : "obj-42",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 315.0, 8.0, 16.0, 16.0 ],
													"id" : "obj-41",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 288.0, 8.0, 16.0, 16.0 ],
													"id" : "obj-40",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 234.0, 8.0, 16.0, 16.0 ],
													"id" : "obj-39",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 2",
													"patching_rect" : [ 261.0, 41.0, 48.0, 20.0 ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 11.595187,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"patching_rect" : [ 67.0, 270.0, 100.0, 18.0 ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"patching_rect" : [ 172.0, 118.0, 55.0, 20.0 ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 11.595187,
													"outlettype" : [ "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"patching_rect" : [ 67.0, 249.0, 100.0, 18.0 ],
													"id" : "obj-33",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l l",
													"patching_rect" : [ 35.0, 95.0, 68.0, 18.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 10.0,
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"patching_rect" : [ 67.0, 221.0, 32.5, 18.0 ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "&&",
													"patching_rect" : [ 99.0, 149.0, 56.0, 18.0 ],
													"id" : "obj-27",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p l==",
													"patching_rect" : [ 136.0, 118.0, 34.0, 20.0 ],
													"id" : "obj-192",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 11.595187,
													"outlettype" : [ "int" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 10.0, 59.0, 128.0, 161.0 ],
														"bglocked" : 0,
														"defrect" : [ 10.0, 59.0, 128.0, 161.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 1",
																	"patching_rect" : [ 50.0, 92.0, 27.0, 20.0 ],
																	"id" : "obj-1",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 11.595187,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl change",
																	"patching_rect" : [ 50.0, 61.0, 58.0, 20.0 ],
																	"id" : "obj-2",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontsize" : 11.595187,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																	"id" : "obj-3",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 50.0, 123.0, 15.0, 15.0 ],
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Arial",
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl change",
													"patching_rect" : [ 60.0, 119.0, 58.0, 20.0 ],
													"id" : "obj-193",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 11.595187,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"patching_rect" : [ 35.0, 35.0, 34.0, 18.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend /rename",
													"patching_rect" : [ 67.0, 291.0, 100.0, 18.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"patching_rect" : [ 35.0, 60.0, 138.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 11.595187,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 35.0, 10.0, 16.0, 16.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-52", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-28", 1 ],
													"hidden" : 0,
													"midpoints" : [ 44.5, 189.0, 90.0, 189.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-193", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-192", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-192", 0 ],
													"destination" : [ "obj-27", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-193", 1 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [ 44.5, 30.0, 270.5, 30.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-52", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-52", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-44", 1 ],
													"hidden" : 0,
													"midpoints" : [ 270.5, 89.0, 463.0, 89.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p cellblock_settings",
									"patching_rect" : [ 29.0, 59.0, 97.0, 18.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 370.0, 226.0, 211.0, 309.0 ],
										"bglocked" : 0,
										"defrect" : [ 370.0, 226.0, 211.0, 309.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"patching_rect" : [ 3.0, 46.0, 24.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route NO-CUE",
													"patching_rect" : [ 3.0, 25.0, 89.0, 20.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear all, set 0 0 n°, set 1 0 CUE",
													"linecount" : 2,
													"patching_rect" : [ 3.0, 72.0, 83.0, 27.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 0 0 n°",
													"patching_rect" : [ 61.0, 243.0, 53.0, 16.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl len",
													"patching_rect" : [ 88.0, 182.0, 34.0, 18.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l l",
													"patching_rect" : [ 61.0, 133.0, 46.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "cols 2, rows $1",
													"patching_rect" : [ 88.0, 202.0, 88.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 11.595187,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend CUE",
													"patching_rect" : [ 61.0, 113.0, 71.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 0 $1 $1, set 1 $1 $2",
													"patching_rect" : [ 75.0, 224.0, 115.0, 16.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "listfunnel",
													"patching_rect" : [ 75.0, 158.0, 50.0, 18.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "list" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-listCue",
													"patching_rect" : [ 3.0, 6.0, 71.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 3.0, 276.5, 25.0, 25.0 ],
													"id" : "obj-46",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p switch",
									"patching_rect" : [ 165.0, 305.0, 67.0, 17.0 ],
									"id" : "obj-97",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 501.0, 105.0, 302.0, 338.0 ],
										"bglocked" : 0,
										"defrect" : [ 501.0, 105.0, 302.0, 338.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "sort -1 -1",
													"patching_rect" : [ 215.0, 200.0, 55.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 11.595187,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess refer #1Cue_Modules",
													"patching_rect" : [ 77.0, 260.0, 220.0, 19.0 ],
													"id" : "obj-114",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p colors",
													"patching_rect" : [ 55.0, 168.317322, 48.0, 18.0 ],
													"id" : "obj-39",
													"fontname" : "Arial",
													"numinlets" : 3,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 162.0, 140.0, 698.0, 590.0 ],
														"bglocked" : 0,
														"defrect" : [ 162.0, 140.0, 698.0, 590.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1",
																	"patching_rect" : [ 123.51062, 394.113495, 97.163124, 17.0 ],
																	"id" : "obj-34",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "bang", "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 1",
																	"patching_rect" : [ 125.0, 350.0, 100.0, 17.0 ],
																	"id" : "obj-31",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 0.784314 1. 0.784314 255",
																	"patching_rect" : [ 163.404297, 434.078033, 163.0, 14.0 ],
																	"id" : "obj-28",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 8.148671,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 1. 0.784314 0.784314 255",
																	"patching_rect" : [ 124.418457, 414.617035, 163.0, 14.0 ],
																	"id" : "obj-30",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 8.148671,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"patching_rect" : [ 125.0, 371.0, 35.0, 17.0 ],
																	"id" : "obj-27",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "==",
																	"patching_rect" : [ 125.0, 329.0, 55.0, 17.0 ],
																	"id" : "obj-22",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"patching_rect" : [ 80.0, 277.0, 50.0, 17.0 ],
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "200 255 200",
																	"patching_rect" : [ 241.092224, 282.48938, 64.0, 15.0 ],
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 8.372468,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "255 200 200",
																	"patching_rect" : [ 176.99292, 282.404297, 64.0, 15.0 ],
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 8.372468,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1",
																	"patching_rect" : [ 177.51062, 261.113495, 97.163124, 17.0 ],
																	"id" : "obj-19",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "bang", "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack row 0 brgb 0 0 0",
																	"patching_rect" : [ 80.0, 303.468109, 180.723404, 17.0 ],
																	"id" : "obj-20",
																	"fontname" : "Verdana",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "print",
																	"patching_rect" : [ 436.0, 487.0, 100.0, 17.0 ],
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "deferlow",
																	"patching_rect" : [ 82.0, 74.0, 56.0, 17.0 ],
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 82.028381, 43.0, 25.0, 25.0 ],
																	"id" : "obj-10",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"patching_rect" : [ 151.0, 69.0, 20.0, 20.0 ],
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"patching_rect" : [ 80.0, 211.0, 45.0, 17.0 ],
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t dump 0",
																	"patching_rect" : [ 81.0, 143.0, 63.0, 17.0 ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "dump", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl nth 1",
																	"patching_rect" : [ 80.0, 191.0, 47.0, 17.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter",
																	"patching_rect" : [ 80.0, 231.0, 108.0, 17.0 ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 5,
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int", "", "", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll #1Cue_Modules 1",
																	"patching_rect" : [ 81.013062, 163.939941, 146.0, 17.0 ],
																	"id" : "obj-17",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontsize" : 9.242982,
																	"outlettype" : [ "", "", "", "" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 269.0, 552.0, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 0.784314 1. 0.784314 255",
																	"patching_rect" : [ 437.404297, 305.078033, 163.0, 14.0 ],
																	"id" : "obj-46",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 8.148671,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 1. 0.784314 0.784314 255",
																	"patching_rect" : [ 429.418457, 287.617035, 163.0, 14.0 ],
																	"id" : "obj-23",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 8.148671,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l",
																	"patching_rect" : [ 394.028381, 439.595764, 34.163124, 17.0 ],
																	"id" : "obj-40",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"patching_rect" : [ 345.801453, 246.205688, 19.432625, 19.432625 ],
																	"id" : "obj-36",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "200 255 200",
																	"patching_rect" : [ 494.092224, 247.48938, 64.0, 15.0 ],
																	"id" : "obj-35",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 8.372468,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "255 200 200",
																	"patching_rect" : [ 429.99292, 247.404297, 64.0, 15.0 ],
																	"id" : "obj-24",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 8.372468,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1",
																	"patching_rect" : [ 430.51062, 226.113495, 97.163124, 17.0 ],
																	"id" : "obj-33",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "bang", "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$2",
																	"patching_rect" : [ 364.092224, 216.0, 48.581562, 14.0 ],
																	"id" : "obj-32",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 8.148671,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack row 0 brgb 0 0 0",
																	"patching_rect" : [ 333.0, 268.468109, 180.723404, 17.0 ],
																	"id" : "obj-29",
																	"fontname" : "Verdana",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 363.028381, 89.0, 25.0, 25.0 ],
																	"id" : "obj-37",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 429.028381, 89.0, 25.0, 25.0 ],
																	"id" : "obj-38",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 1 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-29", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-29", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 1 ],
																	"destination" : [ "obj-46", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-46", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-2", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-20", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 1 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 1 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-22", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 1 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 1 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 172.904297, 537.0, 278.5, 537.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 133.918457, 429.0, 129.0, 429.0, 129.0, 537.0, 278.5, 537.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 89.5, 537.0, 278.5, 537.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontsize" : 9.0,
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf store %s %i",
													"patching_rect" : [ 115.0, 197.0, 93.0, 17.0 ],
													"id" : "obj-115",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 8.462612,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"patching_rect" : [ 160.0, 139.0, 46.217968, 17.0 ],
													"id" : "obj-116",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 8.462612,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"patching_rect" : [ 115.283447, 119.257492, 63.549702, 17.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 8.462612,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 2",
													"patching_rect" : [ 70.028381, 100.0, 63.549702, 17.0 ],
													"id" : "obj-117",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 8.462612,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #1Cue_Modules 1",
													"patching_rect" : [ 115.0, 227.0, 146.0, 17.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 9.242982,
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 115.028381, 38.0, 25.0, 25.0 ],
													"id" : "obj-92",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 70.028381, 38.0, 25.0, 25.0 ],
													"id" : "obj-93",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 55.025757, 293.718018, 25.0, 25.0 ],
													"id" : "obj-94",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-115", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-114", 0 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-116", 0 ],
													"destination" : [ "obj-39", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-92", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-116", 0 ],
													"destination" : [ "obj-115", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-115", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-116", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-117", 0 ],
													"destination" : [ "obj-39", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-93", 0 ],
													"destination" : [ "obj-117", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-117", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 9.0,
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p modules",
									"patching_rect" : [ 165.0, 55.0, 57.0, 18.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 370.0, 139.0, 634.0, 554.0 ],
										"bglocked" : 0,
										"defrect" : [ 370.0, 139.0, 634.0, 554.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 130.0, 245.0, 20.0, 20.0 ],
													"id" : "obj-41",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 305.0, 330.0, 100.0, 18.0 ],
													"id" : "obj-37",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 295.0, 350.0, 100.0, 18.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 280.0, 270.0, 20.0, 20.0 ],
													"id" : "obj-38",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf read %sCue_Modules",
													"patching_rect" : [ 295.0, 400.0, 139.0, 18.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass #1",
													"patching_rect" : [ 500.0, 360.0, 115.0, 18.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass #1",
													"patching_rect" : [ 295.0, 375.0, 115.0, 18.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess #1",
													"patching_rect" : [ 320.0, 275.0, 115.0, 18.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s #1",
													"patching_rect" : [ 440.0, 330.0, 130.0, 18.0 ],
													"id" : "obj-35",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf write %s%sCue_Modules",
													"linecount" : 2,
													"patching_rect" : [ 440.0, 390.0, 130.0, 29.0 ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 505.0, 275.0, 20.0, 20.0 ],
													"id" : "obj-24",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "v patchpath",
													"patching_rect" : [ 440.0, 305.0, 62.0, 18.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "freebang",
													"patching_rect" : [ 440.0, 280.0, 50.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "read",
													"patching_rect" : [ 395.0, 445.0, 50.0, 16.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "write",
													"patching_rect" : [ 340.0, 445.0, 50.0, 16.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route /editing_this_module /cueManager #1",
													"patching_rect" : [ 323.0, 246.0, 248.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 10.0,
													"outlettype" : [ "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "selmode 5",
													"patching_rect" : [ 84.0, 395.0, 57.0, 16.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"patching_rect" : [ 120.0, 82.0, 51.0, 18.0 ],
													"id" : "obj-32",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"patching_rect" : [ 152.0, 103.0, 48.0, 18.0 ],
													"id" : "obj-33",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "refer #1Cue_Modules",
													"patching_rect" : [ 66.0, 369.0, 154.0, 16.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 66.0, 431.0, 25.0, 25.0 ],
													"id" : "obj-20",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "store $1 1",
													"patching_rect" : [ 210.0, 290.0, 55.0, 16.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #1Cue_Modules 1",
													"patching_rect" : [ 180.0, 440.0, 155.0, 18.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 10.0,
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 291.0, 55.0, 100.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"patching_rect" : [ 291.0, 30.0, 100.0, 18.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"patching_rect" : [ 34.0, 83.0, 51.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend remove",
													"patching_rect" : [ 181.0, 126.0, 92.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"patching_rect" : [ 66.0, 105.0, 48.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b clear",
													"patching_rect" : [ 291.0, 80.0, 240.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.receive notifications",
													"patching_rect" : [ 34.0, 32.0, 188.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route module.new module.removed",
													"patching_rect" : [ 34.0, 59.0, 190.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"patching_rect" : [ 210.0, 266.5, 54.0, 18.0 ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"patching_rect" : [ 291.0, 224.0, 51.0, 18.0 ],
													"id" : "obj-25",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "name jcom.remote.module.from",
													"patching_rect" : [ 358.0, 153.0, 170.0, 16.0 ],
													"id" : "obj-26",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "name dumb",
													"patching_rect" : [ 291.0, 154.0, 68.0, 16.0 ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s b",
													"patching_rect" : [ 291.0, 130.0, 86.0, 18.0 ],
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "/*/module_name:/get",
													"patching_rect" : [ 291.0, 108.0, 121.0, 16.0 ],
													"id" : "obj-29",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.receive dumb",
													"patching_rect" : [ 291.0, 203.0, 188.0, 18.0 ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.send jcom.remote.module.to",
													"patching_rect" : [ 325.0, 174.0, 180.0, 18.0 ],
													"id" : "obj-31",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 449.5, 426.0, 189.5, 426.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-34", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 2 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 1 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [ 367.5, 196.0, 300.5, 196.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 3 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.cues 1",
									"patching_rect" : [ 720.0, 129.0, 100.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "", "" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "copy_of_Init",
									"patching_rect" : [ 170.0, 371.0, 88.0, 18.0 ],
									"presentation" : 1,
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"lines" : 1,
									"numoutlets" : 4,
									"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"keymode" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "", "int", "", "" ],
									"presentation_rect" : [ 120.0, 5.0, 103.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 0.0, 0.0, 12.0, 12.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "modules",
									"patching_rect" : [ 180.0, 80.0, 48.0, 18.0 ],
									"presentation" : 1,
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"presentation_rect" : [ 180.0, 60.0, 48.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"patching_rect" : [ 208.0, 414.0, 62.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"outlettype" : [ "", "", "int" ],
									"text" : "remove",
									"presentation_rect" : [ 40.0, 35.0, 62.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"patching_rect" : [ 57.0, 370.0, 62.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"outlettype" : [ "", "", "int" ],
									"text" : "copy",
									"presentation_rect" : [ 40.0, 5.0, 42.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Cues",
									"patching_rect" : [ 45.0, 80.0, 34.0, 18.0 ],
									"presentation" : 1,
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"presentation_rect" : [ 45.0, 60.0, 34.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"varname" : "modules",
									"patching_rect" : [ 165.0, 110.0, 162.0, 186.0 ],
									"presentation" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 4,
									"rows" : 1,
									"selmode" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "list", "", "", "" ],
									"hcellcolor" : [ 1.0, 0.784314, 0.784314, 255.0 ],
									"cols" : 1,
									"presentation_rect" : [ 165.0, 85.0, 123.0, 655.0 ],
									"hscroll" : 0,
									"outmode" : 1,
									"colwidth" : 120,
									"rowdef" : [ [ 0, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 61, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 60, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 59, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 58, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 57, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 56, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 55, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 54, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 53, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 52, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 51, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 50, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 49, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 48, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 47, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 46, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 45, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 44, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 43, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 42, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 41, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 40, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 39, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 38, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 37, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 36, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 35, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 34, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 33, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 32, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 31, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 30, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 29, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 28, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 27, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 26, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 25, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 24, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 23, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 22, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 21, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 20, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 19, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 18, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 17, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 16, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 15, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 14, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 13, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 12, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 11, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 10, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 9, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 8, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 7, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 6, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 2, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 1, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 3, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 4, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 5, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ], [ 62, 0, 1, 1.0, 1.0, 1.0, 0, 0.996094, 0.78125, 0.78125, -1, -1, -1 ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"varname" : "cues",
									"patching_rect" : [ 29.0, 105.0, 125.0, 189.0 ],
									"presentation" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 4,
									"rows" : 6,
									"selmode" : 5,
									"fontsize" : 10.0,
									"outlettype" : [ "list", "", "", "" ],
									"cols" : 2,
									"presentation_rect" : [ 35.0, 85.0, 125.0, 654.0 ],
									"outmode" : 2,
									"colwidth" : 120,
									"coldef" : [ [ 0, 23, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, 1 ], [ 1, 98, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, 0 ] ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-60", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 1 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 139.0, 498.0, 15.0, 498.0, 15.0, 102.0, 38.5, 102.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-60", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 174.5, 324.0, 162.0, 324.0, 162.0, 102.0, 174.5, 102.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-97", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-60", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [ 38.5, 489.0, 40.0, 489.0, 40.0, 508.0, 312.0, 508.0, 312.0, 333.0, 199.5, 333.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-60", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-60", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 241.0, 200.0, 46.0, 18.0 ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.panelopen",
					"patching_rect" : [ 241.0, 175.0, 103.0, 18.0 ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"patching_rect" : [ 765.0, 437.0, 32.5, 18.0 ],
					"id" : "obj-78",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"patching_rect" : [ 779.0, 415.0, 42.0, 18.0 ],
					"id" : "obj-77",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "advise the user to store after edit",
					"patching_rect" : [ 486.0, 67.0, 159.0, 18.0 ],
					"id" : "obj-82",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bgcolor 0.75 0.75 0.75 0.57",
					"patching_rect" : [ 767.0, 90.0, 132.0, 16.0 ],
					"id" : "obj-76",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bgcolor 0.1 0.7 0.7 0.57",
					"patching_rect" : [ 463.0, 87.0, 116.0, 16.0 ],
					"id" : "obj-75",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/view ALL-CUES",
					"patching_rect" : [ 24.0, 357.0, 84.0, 16.0 ],
					"id" : "obj-72",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.cuelistfile",
					"patching_rect" : [ 8.0, 410.0, 78.0, 18.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"color" : [ 0.835294, 0.462745, 0.105882, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 305.0, 48.0, 985.0, 665.0 ],
						"bglocked" : 0,
						"defrect" : [ 305.0, 48.0, 985.0, 665.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-from_save_outlet",
									"patching_rect" : [ 255.0, 555.0, 141.0, 20.0 ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "save",
									"patching_rect" : [ 350.0, 107.0, 36.0, 18.0 ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-to_CueListFile",
									"patching_rect" : [ 295.0, 185.0, 125.0, 20.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend saveAs",
									"patching_rect" : [ 295.0, 151.0, 97.0, 20.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"patching_rect" : [ 295.0, 107.0, 24.0, 20.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "savedialog",
									"patching_rect" : [ 295.0, 129.0, 68.0, 20.0 ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"outlettype" : [ "", "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-init",
									"patching_rect" : [ 75.0, 425.0, 64.0, 20.0 ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b clear",
									"patching_rect" : [ 131.0, 396.0, 53.0, 20.0 ],
									"id" : "obj-33",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route clear",
									"patching_rect" : [ 131.0, 372.0, 76.0, 20.0 ],
									"id" : "obj-32",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "TODO",
									"patching_rect" : [ 636.0, 256.0, 46.0, 20.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.792157, 0.082353, 0.082353, 1.0 ],
									"fontsize" : 12.0,
									"textcolor" : [ 0.792157, 0.082353, 0.082353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-getStateMode",
									"patching_rect" : [ 682.0, 73.0, 123.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-getStateMode",
									"patching_rect" : [ 670.0, 539.0, 123.0, 20.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-from_dump_outlet",
									"patching_rect" : [ 131.0, 632.0, 145.0, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"patching_rect" : [ 327.0, 495.0, 32.5, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /listCue /currentCueId /currentCueName /currentCueMode /getStateMode",
									"patching_rect" : [ 364.0, 496.0, 402.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 6,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Put store mode in diff after a store in absolute mode",
									"linecount" : 2,
									"patching_rect" : [ 405.0, 349.0, 155.0, 34.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/getStateMode 0",
									"patching_rect" : [ 368.0, 386.0, 99.0, 18.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"patching_rect" : [ 368.0, 364.0, 36.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"patching_rect" : [ 364.0, 515.0, 36.0, 20.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"patching_rect" : [ 19.0, 370.0, 56.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess clear",
									"patching_rect" : [ 19.0, 348.0, 91.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "info about the name of each cues and about the current cue",
									"linecount" : 2,
									"patching_rect" : [ 356.0, 618.0, 175.0, 34.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 327.0, 627.0, 25.0, 25.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-currentCueMode",
									"patching_rect" : [ 594.0, 517.0, 138.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-currentCueName",
									"patching_rect" : [ 516.0, 539.0, 140.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-currentCueId",
									"patching_rect" : [ 440.0, 517.0, 118.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-listCue",
									"patching_rect" : [ 381.0, 538.0, 85.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 3 1",
									"patching_rect" : [ 185.0, 520.0, 126.0, 20.0 ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-from_view_outlet",
									"patching_rect" : [ 240.0, 585.0, 139.0, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p view",
									"patching_rect" : [ 185.0, 235.0, 202.0, 20.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 848.0, 235.0, 323.0, 404.0 ],
										"bglocked" : 0,
										"defrect" : [ 848.0, 235.0, 323.0, 404.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "text",
													"patching_rect" : [ 30.0, 330.0, 46.0, 20.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"patching_rect" : [ 99.0, 91.0, 24.0, 20.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "ALL-CUES",
													"patching_rect" : [ 19.0, 91.0, 69.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route ALL-CUES",
													"patching_rect" : [ 19.0, 56.0, 99.0, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "do not use a send #0-to_cueListFile",
													"linecount" : 2,
													"patching_rect" : [ 63.0, 353.0, 110.0, 34.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 176.0, 351.0, 25.0, 25.0 ],
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "Init",
													"patching_rect" : [ 99.0, 113.0, 50.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-currentCueName",
													"patching_rect" : [ 130.0, 57.0, 116.0, 18.0 ],
													"id" : "obj-43",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 19.0, 299.0, 56.0, 20.0 ],
													"id" : "obj-76",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-from_view_outlet",
													"patching_rect" : [ 35.0, 271.0, 137.0, 20.0 ],
													"id" : "obj-112",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "send 2 for view mode",
													"linecount" : 2,
													"patching_rect" : [ 203.0, 352.0, 84.0, 34.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 36.0, 351.0, 25.0, 25.0 ],
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 19.0, 223.0, 56.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "open",
													"patching_rect" : [ 19.0, 247.0, 37.0, 18.0 ],
													"id" : "obj-110",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s clear 2",
													"patching_rect" : [ 19.0, 168.0, 73.0, 20.0 ],
													"id" : "obj-109",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "", "clear", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend edit",
													"patching_rect" : [ 37.0, 193.0, 77.0, 20.0 ],
													"id" : "obj-87",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 19.0, 15.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-76", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-112", 0 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-110", 0 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 3 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-109", 0 ],
													"hidden" : 0,
													"midpoints" : [ 108.5, 156.0, 28.5, 156.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 1 ],
													"destination" : [ "obj-87", 0 ],
													"hidden" : 0,
													"midpoints" : [ 46.5, 192.0, 46.5, 192.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-110", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-109", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p edit_getState",
									"patching_rect" : [ 19.0, 122.0, 91.0, 20.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 37.0, 147.0, 298.0, 263.0 ],
										"bglocked" : 0,
										"defrect" : [ 37.0, 147.0, 298.0, 263.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 46.0, 5.0, 25.0, 25.0 ],
													"id" : "obj-4",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "get_state clear",
													"patching_rect" : [ 205.0, 168.0, 89.0, 18.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "edit get_state",
													"patching_rect" : [ 137.0, 130.0, 83.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 137.0, 214.0, 125.0, 20.0 ],
													"id" : "obj-91",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 46.0, 64.0, 56.0, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t open b b",
													"patching_rect" : [ 46.0, 95.0, 200.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "open", "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 123.0, 61.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 46.0, 123.0, 56.0, 20.0 ],
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_text_buffer",
													"patching_rect" : [ 46.0, 182.0, 122.0, 20.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b get_state clear b",
													"patching_rect" : [ 46.0, 35.0, 250.0, 19.0 ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "", "clear", "bang" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 3 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-91", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-91", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p store",
									"patching_rect" : [ 74.0, 279.0, 313.0, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 232.0, 59.0, 794.0, 712.0 ],
										"bglocked" : 0,
										"defrect" : [ 232.0, 59.0, 794.0, 712.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-currentCueId",
													"patching_rect" : [ 660.0, 325.0, 118.0, 20.0 ],
													"id" : "obj-53",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "-1",
													"patching_rect" : [ 720.0, 383.0, 32.5, 18.0 ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-init",
													"patching_rect" : [ 720.0, 360.0, 62.0, 20.0 ],
													"id" : "obj-47",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"patching_rect" : [ 26.0, 376.0, 34.0, 20.0 ],
													"id" : "obj-51",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"patching_rect" : [ 631.0, 608.0, 32.5, 20.0 ],
													"id" : "obj-50",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 631.0, 636.0, 25.0, 25.0 ],
													"id" : "obj-49",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "info",
													"patching_rect" : [ 41.0, 421.0, 32.5, 18.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-newStoreAs",
													"patching_rect" : [ 185.0, 109.0, 113.0, 20.0 ],
													"id" : "obj-35",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route storeAs",
													"patching_rect" : [ 632.0, 360.0, 82.0, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"patching_rect" : [ 658.0, 416.0, 50.0, 20.0 ],
													"id" : "obj-44",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack i i s",
													"patching_rect" : [ 632.0, 383.0, 71.0, 20.0 ],
													"id" : "obj-42",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "int", "int", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-newStoreAs",
													"patching_rect" : [ 658.0, 449.0, 113.0, 20.0 ],
													"id" : "obj-37",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1 Init",
													"patching_rect" : [ 224.0, 169.0, 116.0, 18.0 ],
													"id" : "obj-45",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"patching_rect" : [ 224.0, 85.0, 24.0, 20.0 ],
													"id" : "obj-39",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "remove $1",
													"patching_rect" : [ 277.0, 284.0, 67.0, 18.0 ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"patching_rect" : [ 224.0, 206.0, 32.5, 20.0 ],
													"id" : "obj-40",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"patching_rect" : [ 333.0, 58.0, 32.5, 18.0 ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"patching_rect" : [ 333.0, 36.0, 36.0, 20.0 ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-currentCueId",
													"patching_rect" : [ 333.0, 15.0, 116.0, 20.0 ],
													"id" : "obj-33",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak i s",
													"patching_rect" : [ 408.0, 127.0, 51.0, 20.0 ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-getStateMode",
													"patching_rect" : [ 3.0, 100.0, 121.0, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-WAITvalue",
													"patching_rect" : [ 172.0, 132.0, 107.0, 20.0 ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"patching_rect" : [ 3.0, 123.0, 43.0, 18.0 ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend 1",
													"patching_rect" : [ 26.0, 282.0, 65.0, 20.0 ],
													"id" : "obj-29",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i b",
													"patching_rect" : [ 158.0, 87.0, 46.0, 20.0 ],
													"id" : "obj-27",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"patching_rect" : [ 228.0, 508.0, 34.0, 20.0 ],
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "store the text_buffer",
													"linecount" : 2,
													"patching_rect" : [ 303.0, 656.0, 65.0, 34.0 ],
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "store a get_state",
													"linecount" : 2,
													"patching_rect" : [ 228.0, 656.0, 65.0, 34.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"patching_rect" : [ 302.0, 508.0, 34.0, 20.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route ALL-CUES",
													"patching_rect" : [ 347.0, 408.0, 99.0, 20.0 ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route bang",
													"patching_rect" : [ 508.0, 80.0, 68.0, 20.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-listCue",
													"patching_rect" : [ 508.0, 54.0, 83.0, 20.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "NO_EDIT",
													"patching_rect" : [ 347.0, 551.0, 62.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Sinon on fait un get_state avant de storer le text_buffer",
													"linecount" : 3,
													"patching_rect" : [ 448.0, 517.0, 137.0, 48.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Si il y a eu une modification d'une cue ou du get_state : on store le text_buffer actuel",
													"linecount" : 5,
													"patching_rect" : [ 448.0, 441.0, 137.0, 75.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "store",
													"patching_rect" : [ 228.0, 600.0, 37.0, 18.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel NO_EDIT",
													"patching_rect" : [ 228.0, 483.0, 93.0, 20.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "NO_EDIT",
													"patching_rect" : [ 228.0, 453.0, 119.0, 18.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route edit",
													"patching_rect" : [ 347.0, 385.0, 61.0, 20.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-to_CueListFile",
													"patching_rect" : [ 347.0, 362.0, 123.0, 20.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 228.0, 625.0, 25.0, 25.0 ],
													"id" : "obj-10",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 430.0, 650.0, 125.0, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b l l",
													"patching_rect" : [ 26.0, 326.0, 624.5, 20.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 302.0, 578.0, 56.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "cue_1",
													"patching_rect" : [ 450.0, 75.0, 59.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 26.0, 41.0, 51.0, 19.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 26.0, 14.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route bang",
													"patching_rect" : [ 440.0, 37.0, 68.0, 20.0 ],
													"id" : "obj-48",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-currentCueName",
													"patching_rect" : [ 440.0, 15.0, 138.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"patching_rect" : [ 42.0, 203.0, 24.0, 20.0 ],
													"id" : "obj-46",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p prepare_next_name",
													"patching_rect" : [ 42.0, 226.0, 128.0, 20.0 ],
													"id" : "obj-43",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 490.0, 223.0, 304.0, 352.0 ],
														"bglocked" : 0,
														"defrect" : [ 490.0, 223.0, 304.0, 352.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 5.0, 5.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route symbol",
																	"patching_rect" : [ 115.0, 205.0, 79.0, 20.0 ],
																	"id" : "obj-12",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 12.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"patching_rect" : [ 115.0, 230.0, 59.0, 20.0 ],
																	"id" : "obj-9",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend symbol",
																	"patching_rect" : [ 189.0, 138.0, 96.0, 20.0 ],
																	"id" : "obj-7",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 45.0, 188.0, 43.0, 18.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "symbol cue_2",
																	"patching_rect" : [ 115.0, 161.0, 93.0, 16.0 ],
																	"id" : "obj-60",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 10.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "dialog Cue name",
																	"patching_rect" : [ 115.0, 179.0, 86.0, 18.0 ],
																	"id" : "obj-54",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 10.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b s",
																	"patching_rect" : [ 115.0, 255.0, 33.0, 20.0 ],
																	"id" : "obj-8",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 12.0,
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"patching_rect" : [ 9.0, 87.0, 32.5, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r #0-currentCueId",
																	"patching_rect" : [ 9.0, 65.0, 116.0, 20.0 ],
																	"id" : "obj-3",
																	"fontname" : "Arial",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 45.0, 317.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 115.0, 18.0, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack i s",
																	"patching_rect" : [ 45.0, 280.0, 103.0, 20.0 ],
																	"id" : "obj-13",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"patching_rect" : [ 189.0, 86.0, 32.5, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"patching_rect" : [ 140.0, 62.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route bang",
																	"patching_rect" : [ 140.0, 41.0, 68.0, 20.0 ],
																	"id" : "obj-30",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 12.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf cue_%ld",
																	"patching_rect" : [ 189.0, 116.0, 93.0, 20.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r #0-listCue",
																	"patching_rect" : [ 140.0, 20.0, 83.0, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl len",
																	"patching_rect" : [ 189.0, 64.0, 39.0, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontsize" : 12.0,
																	"outlettype" : [ "", "" ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-60", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-60", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 1 ],
																	"destination" : [ "obj-13", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-60", 0 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 1 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Arial",
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_text_buffer",
													"patching_rect" : [ 302.0, 625.0, 122.0, 20.0 ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump",
													"patching_rect" : [ 302.0, 601.0, 47.0, 20.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "dump" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend storeAs",
													"patching_rect" : [ 26.0, 304.0, 99.0, 20.0 ],
													"id" : "obj-128",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /as /asNext /asNextStep",
													"patching_rect" : [ 26.0, 63.0, 217.0, 20.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 12.0,
													"outlettype" : [ "", "", "", "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 1 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-50", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 667.5, 438.0, 667.5, 438.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 1 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 3 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [ 356.5, 574.0, 413.0, 574.0, 413.0, 529.0, 413.0, 529.0, 413.0, 438.0, 337.5, 438.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 326.5, 537.0, 356.5, 537.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 252.5, 537.0, 356.5, 537.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [ 436.5, 438.0, 337.5, 438.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-128", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-45", 1 ],
													"hidden" : 0,
													"midpoints" : [ 417.5, 155.0, 330.5, 155.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 1 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 1 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [ 247.0, 258.0, 286.5, 258.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 2 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-128", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 3 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [ 729.5, 409.0, 667.5, 409.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p edit_cue",
									"patching_rect" : [ 129.0, 257.0, 258.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 38.0, 370.0, 297.0, 220.0 ],
										"bglocked" : 0,
										"defrect" : [ 38.0, 370.0, 297.0, 220.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "Init",
													"patching_rect" : [ 30.0, 34.0, 50.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-currentCueName",
													"patching_rect" : [ 61.0, 9.0, 116.0, 18.0 ],
													"id" : "obj-43",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "send 1 for edit mode",
													"linecount" : 2,
													"patching_rect" : [ 187.0, 170.0, 88.0, 34.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 160.0, 178.0, 25.0, 25.0 ],
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 30.0, 136.0, 56.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 30.0, 5.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_text_buffer",
													"patching_rect" : [ 30.0, 182.0, 122.0, 20.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "open",
													"patching_rect" : [ 30.0, 160.0, 37.0, 18.0 ],
													"id" : "obj-110",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s clear 1",
													"patching_rect" : [ 30.0, 56.0, 73.0, 20.0 ],
													"id" : "obj-109",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "", "clear", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 48.0, 112.0, 125.0, 20.0 ],
													"id" : "obj-106",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend edit",
													"patching_rect" : [ 48.0, 90.0, 77.0, 20.0 ],
													"id" : "obj-87",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-109", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 1 ],
													"destination" : [ "obj-87", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 3 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 93.5, 83.0, 169.5, 83.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-110", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 0 ],
													"destination" : [ "obj-106", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-110", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 2 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p load",
									"patching_rect" : [ 240.0, 213.0, 147.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 596.0, 187.0, 376.0, 471.0 ],
										"bglocked" : 0,
										"defrect" : [ 596.0, 187.0, 376.0, 471.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend FILEPATH",
													"patching_rect" : [ 234.0, 227.0, 113.0, 20.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 32.0, 215.0, 56.0, 20.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 32.0, 190.0, 56.0, 20.0 ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 160.0, 215.0, 56.0, 20.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf loaded file : %s",
													"patching_rect" : [ 202.0, 71.0, 128.0, 20.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"patching_rect" : [ 32.0, 69.0, 24.0, 20.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print jmod.cueManager",
													"patching_rect" : [ 202.0, 95.0, 133.0, 20.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route bang",
													"patching_rect" : [ 32.0, 45.0, 90.0, 20.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-loaded_file",
													"patching_rect" : [ 103.0, 95.0, 107.0, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "info listCue",
													"patching_rect" : [ 32.0, 262.0, 70.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "opendialog",
													"patching_rect" : [ 32.0, 95.0, 69.0, 20.0 ],
													"id" : "obj-124",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear",
													"patching_rect" : [ 336.0, 186.0, 37.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "permet de filtrer\nles \",\" dans les commentaires",
													"linecount" : 3,
													"patching_rect" : [ 261.0, 338.0, 97.0, 48.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf # %s",
													"patching_rect" : [ 183.0, 371.0, 73.0, 20.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"patching_rect" : [ 183.0, 349.0, 59.0, 20.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route #",
													"patching_rect" : [ 183.0, 327.0, 48.0, 20.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump",
													"patching_rect" : [ 160.0, 240.0, 47.0, 20.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "dump" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend read",
													"patching_rect" : [ 144.0, 152.0, 82.0, 20.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "text",
													"patching_rect" : [ 144.0, 183.0, 46.0, 20.0 ],
													"id" : "obj-76",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "cr",
													"patching_rect" : [ 146.0, 320.0, 32.5, 18.0 ],
													"id" : "obj-45",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel bang",
													"patching_rect" : [ 146.0, 298.0, 56.0, 20.0 ],
													"id" : "obj-40",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"patching_rect" : [ 146.0, 276.0, 57.0, 20.0 ],
													"id" : "obj-42",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 32.0, 10.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s s b",
													"patching_rect" : [ 32.0, 126.0, 322.5, 20.0 ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "", "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 34.0, 445.0, 125.0, 20.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend load",
													"patching_rect" : [ 146.0, 410.0, 81.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-124", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-124", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-76", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [ 169.5, 267.0, 130.0, 267.0, 130.0, 179.0, 153.5, 179.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-124", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-76", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-124", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 3 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 2 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saveAs/save",
									"patching_rect" : [ 295.0, 70.0, 92.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 312.0, 218.0, 459.0, 428.0 ],
										"bglocked" : 0,
										"defrect" : [ 312.0, 218.0, 459.0, 428.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 30.0, 360.0, 59.0, 20.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "write",
													"patching_rect" : [ 30.0, 298.0, 39.0, 18.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 30.0, 330.0, 59.0, 20.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"patching_rect" : [ 43.0, 262.0, 24.0, 20.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf save as : %s",
													"patching_rect" : [ 156.0, 242.0, 115.0, 20.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print jmod.cueManager",
													"patching_rect" : [ 156.0, 266.0, 133.0, 20.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess NO-FILE",
													"patching_rect" : [ 285.0, 128.0, 113.0, 20.0 ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route NO-FILE",
													"patching_rect" : [ 43.0, 241.0, 89.0, 20.0 ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"patching_rect" : [ 43.0, 153.0, 69.0, 20.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"patching_rect" : [ 142.0, 42.0, 93.0, 20.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"patching_rect" : [ 30.0, 65.0, 88.0, 20.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "edit ALL-CUES",
													"patching_rect" : [ 132.0, 158.0, 91.0, 18.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b clear 3",
													"patching_rect" : [ 132.0, 129.0, 63.0, 20.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "clear", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-loaded_file",
													"patching_rect" : [ 330.0, 158.0, 105.0, 20.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 142.0, 12.0, 25.0, 25.0 ],
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "NO-FILE",
													"patching_rect" : [ 43.0, 216.0, 306.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "savedialog",
													"patching_rect" : [ 43.0, 129.0, 68.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "", "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "do not use a send #0-to_cueListFile",
													"linecount" : 3,
													"patching_rect" : [ 160.0, 370.0, 101.0, 48.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 283.0, 375.0, 25.0, 25.0 ],
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "text",
													"patching_rect" : [ 30.0, 387.0, 46.0, 20.0 ],
													"id" : "obj-76",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-from_save_outlet",
													"patching_rect" : [ 120.0, 330.0, 139.0, 20.0 ],
													"id" : "obj-112",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "send 3 for save mode",
													"linecount" : 2,
													"patching_rect" : [ 310.0, 375.0, 90.0, 34.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 132.0, 378.0, 25.0, 25.0 ],
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 43.0, 107.0, 56.0, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "write $1",
													"patching_rect" : [ 113.0, 288.0, 53.0, 18.0 ],
													"id" : "obj-110",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 30.0, 12.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-112", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 52.5, 288.0, 15.0, 288.0, 15.0, 102.0, 52.5, 102.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-110", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-110", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p move",
									"patching_rect" : [ 461.0, 256.0, 219.0, 20.0 ],
									"id" : "obj-54",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 59.0, 131.0, 621.0, 528.0 ],
										"bglocked" : 0,
										"defrect" : [ 59.0, 131.0, 621.0, 528.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-getStateMode",
													"patching_rect" : [ 463.0, 320.0, 121.0, 20.0 ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"patching_rect" : [ 463.0, 343.0, 43.0, 18.0 ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend",
													"patching_rect" : [ 407.0, 376.0, 55.0, 20.0 ],
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0 l 1",
													"patching_rect" : [ 15.0, 55.0, 174.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "int", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 0",
													"patching_rect" : [ 15.0, 333.0, 44.0, 20.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 299.0, 93.0, 56.0, 20.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"patching_rect" : [ 299.0, 134.0, 32.5, 20.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack s i",
													"patching_rect" : [ 93.0, 84.0, 65.0, 20.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_text_buffer",
													"patching_rect" : [ 407.0, 482.0, 122.0, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_text_buffer",
													"patching_rect" : [ 15.0, 359.0, 122.0, 20.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "preset_2",
													"patching_rect" : [ 198.0, 248.0, 61.0, 18.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s s",
													"patching_rect" : [ 198.0, 267.0, 55.0, 20.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"patching_rect" : [ 242.0, 211.0, 34.0, 20.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend rename",
													"patching_rect" : [ 199.0, 288.0, 99.0, 20.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend remove",
													"patching_rect" : [ 299.0, 287.0, 98.0, 20.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "audio_on",
													"patching_rect" : [ 299.0, 249.0, 71.0, 18.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 299.0, 178.0, 56.0, 20.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i i",
													"patching_rect" : [ 299.0, 157.0, 126.5, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"patching_rect" : [ 471.0, 261.0, 32.5, 20.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route bang",
													"patching_rect" : [ 422.0, 213.0, 68.0, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "clip 1 10",
													"patching_rect" : [ 407.0, 283.0, 55.0, 20.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 3,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack i s",
													"patching_rect" : [ 407.0, 320.0, 53.0, 20.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf preset_%ld",
													"patching_rect" : [ 471.0, 282.0, 107.0, 20.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-listCue",
													"patching_rect" : [ 422.0, 192.0, 83.0, 20.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl len",
													"patching_rect" : [ 471.0, 240.0, 39.0, 20.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"patching_rect" : [ 407.0, 422.0, 32.5, 20.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 199.0, 420.0, 125.0, 20.0 ],
													"id" : "obj-127",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend storeAs",
													"patching_rect" : [ 407.0, 399.0, 99.0, 20.0 ],
													"id" : "obj-128",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump 0",
													"patching_rect" : [ 407.0, 455.0, 57.0, 20.0 ],
													"id" : "obj-126",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "dump", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-from_edit_outlet",
													"patching_rect" : [ 48.0, 304.0, 133.0, 20.0 ],
													"id" : "obj-112",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s clear 0",
													"patching_rect" : [ 49.0, 214.0, 73.0, 20.0 ],
													"id" : "obj-109",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "", "clear", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 49.0, 276.0, 125.0, 20.0 ],
													"id" : "obj-106",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend edit",
													"patching_rect" : [ 49.0, 255.0, 77.0, 20.0 ],
													"id" : "obj-87",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 15.0, 24.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 2 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [ 148.5, 121.0, 322.0, 121.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-109", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 1 ],
													"destination" : [ "obj-87", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [ 308.5, 204.0, 251.5, 204.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-126", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-128", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-127", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-127", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-127", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-126", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-126", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 3 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-112", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [ 57.5, 328.0, 51.0, 328.0, 51.0, 330.0, 49.5, 330.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 0 ],
													"destination" : [ "obj-106", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [ 472.5, 369.0, 416.5, 369.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-128", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p rename",
									"patching_rect" : [ 516.0, 234.0, 164.0, 20.0 ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 273.0, 271.0, 248.0, 271.0 ],
										"bglocked" : 0,
										"defrect" : [ 273.0, 271.0, 248.0, 271.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "info",
													"patching_rect" : [ 15.0, 104.0, 32.5, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"patching_rect" : [ 15.0, 50.0, 80.5, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 45.0, 187.0, 125.0, 20.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend rename",
													"patching_rect" : [ 77.0, 136.0, 99.0, 20.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 15.0, 11.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p remove",
									"patching_rect" : [ 571.0, 212.0, 109.0, 20.0 ],
									"id" : "obj-55",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 222.0, 249.0, 268.0, 237.0 ],
										"bglocked" : 0,
										"defrect" : [ 222.0, 249.0, 268.0, 237.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "info",
													"patching_rect" : [ 115.0, 115.0, 32.5, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"patching_rect" : [ 155.0, 70.0, 32.5, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear",
													"patching_rect" : [ 22.0, 93.0, 37.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 115.0, 172.0, 125.0, 20.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend remove",
													"patching_rect" : [ 169.0, 114.0, 98.0, 20.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "select ALL-CUES",
													"patching_rect" : [ 22.0, 49.0, 152.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 22.0, 12.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p copy",
									"patching_rect" : [ 406.0, 278.0, 274.0, 20.0 ],
									"id" : "obj-49",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 100.0, 157.0, 493.0, 460.0 ],
										"bglocked" : 0,
										"defrect" : [ 100.0, 157.0, 493.0, 460.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"patching_rect" : [ 219.0, 166.0, 66.0, 20.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "info",
													"patching_rect" : [ 219.0, 252.0, 32.5, 18.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-getStateMode",
													"patching_rect" : [ 331.0, 223.0, 121.0, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"patching_rect" : [ 331.0, 246.0, 43.0, 18.0 ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend",
													"patching_rect" : [ 266.0, 296.0, 55.0, 20.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 179.0, 378.0, 25.0, 25.0 ],
													"id" : "obj-10",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print",
													"patching_rect" : [ 372.0, 286.0, 34.0, 20.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0 l 1 1",
													"patching_rect" : [ 3.0, 32.0, 194.5, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 12.0,
													"outlettype" : [ "int", "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 0",
													"patching_rect" : [ 3.0, 259.0, 44.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"patching_rect" : [ 266.0, 199.0, 32.5, 20.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 219.0, 144.0, 56.0, 20.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack i i s",
													"patching_rect" : [ 62.0, 66.0, 71.0, 20.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "int", "int", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_text_buffer",
													"patching_rect" : [ 266.0, 383.0, 122.0, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_text_buffer",
													"patching_rect" : [ 3.0, 333.0, 122.0, 20.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "clip 1 256",
													"patching_rect" : [ 266.0, 223.0, 62.0, 20.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 3,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack i s",
													"patching_rect" : [ 266.0, 247.0, 53.0, 20.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 3.0, 3.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump l",
													"patching_rect" : [ 266.0, 340.0, 53.0, 20.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "dump", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 300.0, 362.0, 125.0, 20.0 ],
													"id" : "obj-127",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend storeAs",
													"patching_rect" : [ 266.0, 318.0, 99.0, 20.0 ],
													"id" : "obj-128",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-from_edit_outlet",
													"patching_rect" : [ 36.0, 223.0, 133.0, 20.0 ],
													"id" : "obj-112",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i clear",
													"patching_rect" : [ 17.0, 114.0, 59.0, 20.0 ],
													"id" : "obj-109",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "int", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 37.0, 180.0, 125.0, 20.0 ],
													"id" : "obj-106",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend edit",
													"patching_rect" : [ 37.0, 159.0, 77.0, 20.0 ],
													"id" : "obj-87",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 0 ],
													"destination" : [ "obj-106", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-112", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [ 45.5, 250.0, 37.5, 250.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [ 97.5, 113.0, 242.0, 113.0, 242.0, 113.0, 289.0, 113.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-127", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-128", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 3 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-128", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 340.5, 282.0, 275.5, 282.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-128", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 26.5, 140.0, 228.5, 140.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-109", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 1 ],
													"destination" : [ "obj-87", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-127", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cr",
									"patching_rect" : [ 841.0, 274.0, 25.5, 18.0 ],
									"id" : "obj-45",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel bang",
									"patching_rect" : [ 841.0, 248.0, 56.0, 20.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"patching_rect" : [ 841.0, 226.0, 57.0, 20.0 ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend store",
									"patching_rect" : [ 841.0, 301.0, 85.0, 20.0 ],
									"id" : "obj-129",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-to_CueListFile",
									"patching_rect" : [ 841.0, 323.0, 125.0, 20.0 ],
									"id" : "obj-127",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "text",
									"patching_rect" : [ 841.0, 204.0, 46.0, 20.0 ],
									"id" : "obj-76",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"outlettype" : [ "", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-from_edit_outlet",
									"patching_rect" : [ 841.0, 134.0, 133.0, 20.0 ],
									"id" : "obj-112",
									"fontname" : "Arial",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-to_text_buffer",
									"patching_rect" : [ 862.0, 156.0, 120.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /getState /store /edit /view /load /saveAs /save /copy /move /rename /remove /dump /getStateMode",
									"patching_rect" : [ 20.0, 30.0, 737.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 14,
									"fontsize" : 12.0,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 19.0, 8.0, 25.0, 25.0 ],
									"id" : "obj-6",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p dump",
									"patching_rect" : [ 627.0, 190.0, 52.0, 20.0 ],
									"id" : "obj-136",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 4.0, 135.0, 345.0, 485.0 ],
										"bglocked" : 0,
										"defrect" : [ 4.0, 135.0, 345.0, 485.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-dump_updates",
													"patching_rect" : [ 201.0, 403.0, 128.0, 20.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 14.0, 441.0, 125.0, 20.0 ],
													"id" : "obj-91",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "info",
													"patching_rect" : [ 14.0, 90.0, 32.5, 16.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"patching_rect" : [ 14.0, 63.0, 32.5, 18.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0 query i clear 1",
													"patching_rect" : [ 28.0, 114.0, 154.0, 18.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 5,
													"fontsize" : 10.0,
													"outlettype" : [ "int", "query", "int", "clear", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend dump",
													"patching_rect" : [ 96.0, 403.0, 88.0, 20.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-from_dump_outlet",
													"patching_rect" : [ 190.0, 139.0, 143.0, 20.0 ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"patching_rect" : [ 163.0, 161.0, 46.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 14.0, 24.0, 25.0, 25.0 ],
													"id" : "obj-9",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.send jcom.remote.module.to",
													"linecount" : 2,
													"patching_rect" : [ 163.0, 367.0, 112.0, 29.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t cr l",
													"patching_rect" : [ 163.0, 192.0, 42.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "cr", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "text",
													"patching_rect" : [ 163.0, 285.0, 71.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 10.0,
													"outlettype" : [ "", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p trigger_cue",
													"patching_rect" : [ 215.0, 307.0, 75.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "bang" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 87.0, 426.0, 538.0, 377.0 ],
														"bglocked" : 0,
														"defrect" : [ 87.0, 426.0, 538.0, 377.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "This is done by stopping the delay in the [WAIT_or_pass_on] subpatch.",
																	"linecount" : 2,
																	"patching_rect" : [ 245.0, 300.0, 234.0, 30.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "If a new cue is triggered, we have to make sure that any current cue on WAIT is cancelled.",
																	"linecount" : 2,
																	"patching_rect" : [ 245.0, 271.0, 245.0, 30.0 ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "WAIT (pause/resume)",
																	"patching_rect" : [ 285.0, 36.0, 135.0, 18.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "WAIT will cause uzi to pause and resume",
																	"patching_rect" : [ 285.0, 129.0, 213.0, 18.0 ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t i b",
																	"patching_rect" : [ 50.0, 60.0, 184.0, 18.0 ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend line",
																	"patching_rect" : [ 80.0, 258.0, 70.0, 18.0 ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi",
																	"patching_rect" : [ 50.0, 196.0, 40.0, 18.0 ],
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang", "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																	"id" : "obj-12",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 266.0, 34.0, 15.0, 15.0 ],
																	"id" : "obj-13",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "pause" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 80.0, 280.0, 15.0, 15.0 ],
																	"id" : "obj-14",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 215.0, 270.0, 15.0, 15.0 ],
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "Use Uzi to dump the lines of the script that belong to the desired cue.",
																	"linecount" : 2,
																	"patching_rect" : [ 285.0, 85.0, 193.0, 30.0 ],
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "Cue that we want to trigger",
																	"patching_rect" : [ 68.0, 32.0, 146.0, 18.0 ],
																	"id" : "obj-17",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "poll lines from [text]",
																	"patching_rect" : [ 79.0, 303.0, 118.0, 18.0 ],
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 275.0, 189.0, 59.5, 189.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 1 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 2 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p WAIT_or_pass_on",
													"patching_rect" : [ 163.0, 343.0, 127.0, 18.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "pause" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 298.0, 338.0, 723.0, 414.0 ],
														"bglocked" : 0,
														"defrect" : [ 298.0, 338.0, 723.0, 414.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route set",
																	"patching_rect" : [ 210.0, 90.0, 100.0, 19.0 ],
																	"id" : "obj-15",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 10.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "cue events passed through",
																	"linecount" : 2,
																	"patching_rect" : [ 97.0, 300.0, 85.0, 30.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t stop",
																	"patching_rect" : [ 397.0, 129.0, 37.0, 18.0 ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "stop" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t resume",
																	"linecount" : 2,
																	"patching_rect" : [ 210.0, 237.0, 45.0, 30.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "resume" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "defer",
																	"patching_rect" : [ 210.0, 214.0, 34.0, 18.0 ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "del 0",
																	"patching_rect" : [ 210.0, 192.0, 33.0, 18.0 ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i pause",
																	"patching_rect" : [ 210.0, 160.0, 61.0, 18.0 ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang", "int", "pause" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route WAIT",
																	"patching_rect" : [ 210.0, 118.0, 98.0, 18.0 ],
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 210.0, 65.0, 15.0, 15.0 ],
																	"id" : "obj-8",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 397.0, 84.0, 15.0, 15.0 ],
																	"id" : "obj-9",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 78.0, 300.0, 15.0, 15.0 ],
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 210.0, 300.0, 15.0, 15.0 ],
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "If a WAIT message is received, uzi is paused for a while. Other messages are passed through to the right outlet.",
																	"linecount" : 2,
																	"patching_rect" : [ 207.0, 34.0, 293.0, 30.0 ],
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "to uzi",
																	"patching_rect" : [ 227.0, 300.0, 36.0, 18.0 ],
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "If a new cue is triggered, we have to make sure that the previous one is cancelled.",
																	"linecount" : 2,
																	"patching_rect" : [ 421.0, 83.0, 232.0, 30.0 ],
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-5", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 2 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 261.5, 282.0, 219.0, 282.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 406.5, 187.0, 219.5, 187.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 298.5, 147.0, 87.0, 147.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"midpoints" : [ 280.5, 369.0, 296.0, 369.0, 296.0, 293.0, 280.5, 293.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"color" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
													"midpoints" : [ 224.5, 332.0, 149.0, 332.0, 149.0, 265.0, 172.5, 265.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 172.5, 178.0, 172.5, 178.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 2 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-91", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-91", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 4 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 37.5, 144.0, 172.5, 144.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"color" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
													"midpoints" : [ 71.25, 265.0, 172.5, 265.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 3 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"color" : [ 0.082353, 0.25098, 0.431373, 1.0 ],
													"midpoints" : [ 138.75, 265.0, 172.5, 265.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-from_edit_outlet",
									"patching_rect" : [ 183.0, 607.0, 135.0, 20.0 ],
									"id" : "obj-111",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-to_CueListFile",
									"patching_rect" : [ 131.0, 348.0, 123.0, 20.0 ],
									"id" : "obj-91",
									"fontname" : "Arial",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p get_state",
									"patching_rect" : [ 19.0, 311.0, 93.0, 18.0 ],
									"id" : "obj-65",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"color" : [ 0.792157, 0.329412, 0.14902, 0.8 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 835.0, 270.0, 441.0, 495.0 ],
										"bglocked" : 0,
										"defrect" : [ 835.0, 270.0, 441.0, 495.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"patching_rect" : [ 240.0, 162.0, 57.0, 19.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-getStateMode",
													"patching_rect" : [ 294.0, 10.0, 121.0, 20.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"patching_rect" : [ 278.0, 275.0, 32.5, 19.0 ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r  #0-WAITvalue",
													"patching_rect" : [ 278.0, 252.0, 105.0, 20.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p addWAIT",
													"patching_rect" : [ 240.0, 319.0, 71.0, 20.0 ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 469.0, 203.0, 201.0, 160.0 ],
														"bglocked" : 0,
														"defrect" : [ 469.0, 203.0, 201.0, 160.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 23.0, 118.0, 25.0, 25.0 ],
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend store WAIT",
																	"patching_rect" : [ 23.0, 86.0, 117.0, 20.0 ],
																	"id" : "obj-5",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"patching_rect" : [ 23.0, 62.0, 59.5, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "WAIT value",
																	"patching_rect" : [ 96.0, 24.0, 78.0, 20.0 ],
																	"id" : "obj-3",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 12.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 64.0, 21.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 23.0, 21.0, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Arial",
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "onebang",
													"patching_rect" : [ 240.0, 297.0, 57.0, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s  #0-absDiff",
													"patching_rect" : [ 278.0, 203.0, 86.0, 20.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack get_state clear i",
													"patching_rect" : [ 148.0, 70.0, 119.0, 19.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i 1",
													"patching_rect" : [ 278.0, 183.0, 34.5, 19.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 170.0, 252.0, 70.0, 19.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"patching_rect" : [ 15.0, 136.0, 53.0, 19.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-to_CueListFile",
													"patching_rect" : [ 150.0, 456.0, 125.0, 20.0 ],
													"id" : "obj-90",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "##############################",
													"linecount" : 3,
													"patching_rect" : [ 15.0, 295.0, 77.0, 46.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend get_state",
													"patching_rect" : [ 126.0, 412.0, 103.0, 19.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p ENTETE",
													"patching_rect" : [ 126.0, 98.0, 59.0, 19.0 ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "cr" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 73.0, 109.0, 259.0, 250.0 ],
														"bglocked" : 0,
														"defrect" : [ 73.0, 109.0, 259.0, 250.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "##############################",
																	"patching_rect" : [ 27.0, 106.0, 211.0, 18.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 12.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b cr cr",
																	"patching_rect" : [ 27.0, 61.0, 51.0, 20.0 ],
																	"id" : "obj-3",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 12.0,
																	"outlettype" : [ "bang", "cr", "cr" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 27.0, 217.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 27.0, 25.0, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 2 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Arial",
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b b b s b",
													"patching_rect" : [ 82.0, 43.0, 129.5, 19.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 6,
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "bang", "bang", "bang", "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p get_parameter_values",
													"patching_rect" : [ 104.0, 147.0, 130.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 94.0, 107.0, 612.0, 602.0 ],
														"bglocked" : 0,
														"defrect" : [ 94.0, 107.0, 612.0, 602.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p format",
																	"patching_rect" : [ 125.0, 310.0, 55.0, 19.0 ],
																	"id" : "obj-30",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontsize" : 10.0,
																	"outlettype" : [ "cr", "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 304.0, 57.0, 528.0, 774.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 304.0, 57.0, 528.0, 774.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl join",
																					"patching_rect" : [ 225.0, 130.0, 116.0, 18.0 ],
																					"id" : "obj-34",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl slice 1",
																					"patching_rect" : [ 290.0, 70.0, 51.0, 18.0 ],
																					"id" : "obj-11",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sprintf %s%s",
																					"patching_rect" : [ 225.0, 100.0, 84.0, 18.0 ],
																					"id" : "obj-21",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b l",
																					"patching_rect" : [ 280.0, 40.0, 29.0, 18.0 ],
																					"id" : "obj-30",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "bang", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl reg",
																					"patching_rect" : [ 225.0, 75.0, 40.0, 18.0 ],
																					"id" : "obj-31",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p absolute/differential",
																					"patching_rect" : [ 225.0, 160.0, 121.0, 19.0 ],
																					"id" : "obj-5",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "" ],
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 393.0, 77.0, 427.0, 572.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 393.0, 77.0, 427.0, 572.0 ],
																						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																						"openinpresentation" : 0,
																						"default_fontsize" : 12.0,
																						"default_fontface" : 0,
																						"default_fontname" : "Arial",
																						"gridonopen" : 0,
																						"gridsize" : [ 5.0, 5.0 ],
																						"gridsnaponopen" : 0,
																						"toolbarvisible" : 1,
																						"boxanimatetime" : 200,
																						"imprint" : 0,
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "update from the dump",
																									"patching_rect" : [ 142.0, 64.0, 128.0, 20.0 ],
																									"id" : "obj-28",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																									"fontsize" : 12.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "r #0-dump_updates",
																									"patching_rect" : [ 143.0, 87.0, 126.0, 20.0 ],
																									"id" : "obj-27",
																									"fontname" : "Arial",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "prepend store",
																									"patching_rect" : [ 143.0, 111.0, 85.0, 20.0 ],
																									"id" : "obj-29",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "sel 0 1",
																									"patching_rect" : [ 332.0, 162.0, 46.0, 20.0 ],
																									"id" : "obj-26",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 3,
																									"fontsize" : 12.0,
																									"outlettype" : [ "bang", "bang", "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "r #0-live",
																									"patching_rect" : [ 332.0, 132.0, 72.0, 20.0 ],
																									"id" : "obj-21",
																									"fontname" : "Arial",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "name jcom.remote.module.from",
																									"patching_rect" : [ 218.0, 222.0, 170.0, 16.0 ],
																									"id" : "obj-6",
																									"fontname" : "Verdana",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "" ],
																									"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "name \"that deaf dumb and blind kid\"",
																									"patching_rect" : [ 188.0, 203.0, 193.0, 16.0 ],
																									"id" : "obj-15",
																									"fontname" : "Verdana",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "" ],
																									"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "jcom.receive \"that deaf dumb and blind kid\"",
																									"patching_rect" : [ 188.0, 248.0, 228.0, 18.0 ],
																									"id" : "obj-19",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 2,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "", "" ],
																									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "route symbol",
																									"patching_rect" : [ 46.0, 417.0, 79.0, 20.0 ],
																									"id" : "obj-25",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 2,
																									"fontsize" : 12.0,
																									"outlettype" : [ "", "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "zl rev",
																									"patching_rect" : [ 46.0, 488.0, 39.0, 20.0 ],
																									"id" : "obj-24",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 2,
																									"fontsize" : 12.0,
																									"outlettype" : [ "", "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "zl join",
																									"patching_rect" : [ 46.0, 466.0, 41.0, 20.0 ],
																									"id" : "obj-22",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 2,
																									"fontsize" : 12.0,
																									"outlettype" : [ "", "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "route symbol",
																									"patching_rect" : [ 87.0, 440.0, 79.0, 20.0 ],
																									"id" : "obj-14",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 2,
																									"fontsize" : 12.0,
																									"outlettype" : [ "", "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "prepend store",
																									"patching_rect" : [ 46.0, 362.0, 85.0, 20.0 ],
																									"id" : "obj-12",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "t b b",
																									"patching_rect" : [ 304.0, 314.0, 57.0, 20.0 ],
																									"id" : "obj-17",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 2,
																									"fontsize" : 12.0,
																									"outlettype" : [ "bang", "bang" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "clear",
																									"patching_rect" : [ 304.0, 341.0, 37.0, 18.0 ],
																									"id" : "obj-16",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "In Diff mode : memorize changes to store it if a new cue is created.",
																									"linecount" : 2,
																									"patching_rect" : [ 178.0, 403.0, 201.0, 34.0 ],
																									"id" : "obj-11",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																									"fontsize" : 12.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "dump",
																									"patching_rect" : [ 342.0, 341.0, 41.0, 18.0 ],
																									"id" : "obj-10",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "coll diff_coll",
																									"patching_rect" : [ 46.0, 395.0, 72.0, 20.0 ],
																									"id" : "obj-8",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 4,
																									"fontsize" : 12.0,
																									"outlettype" : [ "", "", "", "" ],
																									"saved_object_attributes" : 																									{
																										"embed" : 0
																									}

																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "r #0-newStoreAs",
																									"patching_rect" : [ 304.0, 283.0, 111.0, 20.0 ],
																									"id" : "obj-2",
																									"fontname" : "Arial",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "r #0-absDiff",
																									"patching_rect" : [ 275.0, 86.0, 84.0, 20.0 ],
																									"id" : "obj-5",
																									"fontname" : "Arial",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "0: differential mode\n1 : absolute mode",
																									"linecount" : 2,
																									"patching_rect" : [ 277.0, 42.0, 119.0, 34.0 ],
																									"id" : "obj-20",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																									"fontsize" : 12.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "route symbol",
																									"patching_rect" : [ 59.0, 199.0, 79.0, 20.0 ],
																									"id" : "obj-18",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 2,
																									"fontsize" : 12.0,
																									"outlettype" : [ "", "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "== 0",
																									"patching_rect" : [ 59.0, 273.0, 35.0, 20.0 ],
																									"id" : "obj-13",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "int" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "zl compare",
																									"patching_rect" : [ 59.0, 241.0, 69.0, 20.0 ],
																									"id" : "obj-4",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 2,
																									"fontsize" : 12.0,
																									"outlettype" : [ "", "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "clear",
																									"patching_rect" : [ 275.0, 130.0, 37.0, 18.0 ],
																									"id" : "obj-47",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "select 1",
																									"patching_rect" : [ 275.0, 108.0, 52.0, 20.0 ],
																									"id" : "obj-45",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 2,
																									"fontsize" : 12.0,
																									"outlettype" : [ "bang", "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "prepend store",
																									"patching_rect" : [ 47.0, 510.0, 85.0, 20.0 ],
																									"id" : "obj-44",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "t l l",
																									"patching_rect" : [ 16.0, 338.0, 48.5, 20.0 ],
																									"id" : "obj-42",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 2,
																									"fontsize" : 12.0,
																									"outlettype" : [ "", "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "gate",
																									"patching_rect" : [ 16.0, 315.0, 48.0, 20.0 ],
																									"id" : "obj-41",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "$2",
																									"patching_rect" : [ 109.0, 136.0, 32.5, 18.0 ],
																									"id" : "obj-40",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "$1",
																									"patching_rect" : [ 59.0, 136.0, 32.5, 18.0 ],
																									"id" : "obj-37",
																									"fontname" : "Arial",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 12.0,
																									"outlettype" : [ "" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "t l l l 1",
																									"patching_rect" : [ 45.0, 58.0, 59.5, 20.0 ],
																									"id" : "obj-23",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 4,
																									"fontsize" : 12.0,
																									"outlettype" : [ "", "", "", "int" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "value to memorized",
																									"patching_rect" : [ 73.0, 22.0, 116.0, 20.0 ],
																									"id" : "obj-9",
																									"fontname" : "Arial",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																									"fontsize" : 12.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "coll state_coll",
																									"patching_rect" : [ 59.0, 175.0, 78.0, 18.0 ],
																									"id" : "obj-7",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 4,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "", "", "", "" ],
																									"saved_object_attributes" : 																									{
																										"embed" : 0
																									}

																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"patching_rect" : [ 16.0, 496.0, 25.0, 25.0 ],
																									"id" : "obj-3",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 45.0, 21.0, 25.0, 25.0 ],
																									"id" : "obj-1",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"outlettype" : [ "" ],
																									"comment" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-29", 0 ],
																									"destination" : [ "obj-7", 0 ],
																									"hidden" : 0,
																									"midpoints" : [ 152.5, 138.0, 152.0, 138.0, 152.0, 161.0, 68.5, 161.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-27", 0 ],
																									"destination" : [ "obj-29", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-19", 0 ],
																									"destination" : [ "obj-12", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-26", 1 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-26", 0 ],
																									"destination" : [ "obj-15", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-21", 0 ],
																									"destination" : [ "obj-26", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-15", 0 ],
																									"destination" : [ "obj-19", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 0 ],
																									"destination" : [ "obj-19", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-25", 1 ],
																									"destination" : [ "obj-22", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-25", 0 ],
																									"destination" : [ "obj-22", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 0 ],
																									"destination" : [ "obj-25", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 0 ],
																									"destination" : [ "obj-44", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-22", 0 ],
																									"destination" : [ "obj-24", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-14", 0 ],
																									"destination" : [ "obj-22", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 1 ],
																									"destination" : [ "obj-14", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-16", 0 ],
																									"destination" : [ "obj-8", 0 ],
																									"hidden" : 0,
																									"midpoints" : [ 313.5, 390.0, 55.5, 390.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-47", 0 ],
																									"destination" : [ "obj-8", 0 ],
																									"hidden" : 0,
																									"midpoints" : [ 284.5, 390.0, 55.5, 390.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-42", 1 ],
																									"destination" : [ "obj-12", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-12", 0 ],
																									"destination" : [ "obj-8", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-23", 0 ],
																									"destination" : [ "obj-41", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-23", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-23", 3 ],
																									"destination" : [ "obj-41", 0 ],
																									"hidden" : 0,
																									"midpoints" : [ 95.0, 128.0, 25.5, 128.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-23", 1 ],
																									"destination" : [ "obj-37", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-23", 2 ],
																									"destination" : [ "obj-40", 0 ],
																									"hidden" : 0,
																									"midpoints" : [ 81.5, 121.0, 118.5, 121.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-45", 0 ],
																									"destination" : [ "obj-47", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-18", 1 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-18", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-40", 0 ],
																									"destination" : [ "obj-4", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-13", 0 ],
																									"destination" : [ "obj-41", 0 ],
																									"hidden" : 0,
																									"midpoints" : [ 68.5, 306.0, 25.5, 306.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-13", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-41", 0 ],
																									"destination" : [ "obj-42", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-42", 0 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-45", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-17", 1 ],
																									"destination" : [ "obj-10", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-17", 0 ],
																									"destination" : [ "obj-16", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-17", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-44", 0 ],
																									"destination" : [ "obj-7", 0 ],
																									"hidden" : 0,
																									"midpoints" : [ 56.5, 537.0, 169.0, 537.0, 169.0, 161.0, 68.5, 161.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-47", 0 ],
																									"destination" : [ "obj-7", 0 ],
																									"hidden" : 0,
																									"midpoints" : [ 284.5, 161.0, 68.5, 161.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-37", 0 ],
																									"destination" : [ "obj-7", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-7", 0 ],
																									"destination" : [ "obj-18", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-10", 0 ],
																									"destination" : [ "obj-8", 0 ],
																									"hidden" : 0,
																									"midpoints" : [ 351.5, 390.0, 55.5, 390.0 ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
																						"default_fontface" : 0,
																						"fontname" : "Arial",
																						"default_fontname" : "Arial",
																						"globalpatchername" : "",
																						"default_fontsize" : 12.0,
																						"fontface" : 0,
																						"fontsize" : 12.0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r #0_getAttr",
																					"patching_rect" : [ 20.0, 115.0, 72.0, 18.0 ],
																					"id" : "obj-38",
																					"fontname" : "Arial",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate",
																					"patching_rect" : [ 20.0, 145.0, 78.0, 19.0 ],
																					"id" : "obj-22",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p attr",
																					"patching_rect" : [ 20.0, 170.0, 43.0, 19.0 ],
																					"id" : "obj-39",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "cr" ],
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 483.0, 44.0, 401.0, 369.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 483.0, 44.0, 401.0, 369.0 ],
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
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "t l tab tab tab tab tab tab cr",
																									"linecount" : 2,
																									"patching_rect" : [ 50.0, 260.0, 112.0, 31.0 ],
																									"id" : "obj-24",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 8,
																									"fontsize" : 10.0,
																									"outlettype" : [ "", "tab", "tab", "tab", "tab", "tab", "tab", "cr" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"patching_rect" : [ 95.0, 310.0, 19.0, 19.0 ],
																									"id" : "obj-20",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "t b s b",
																									"patching_rect" : [ 45.0, 65.0, 40.0, 18.0 ],
																									"id" : "obj-2",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 3,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "bang", "", "bang" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 60.0, 0.0, 20.0, 20.0 ],
																									"id" : "obj-1",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"outlettype" : [ "" ],
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "name jcom.remote.module.from",
																									"patching_rect" : [ 80.0, 199.0, 170.0, 16.0 ],
																									"id" : "obj-5",
																									"fontname" : "Verdana",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "" ],
																									"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "name \"that deaf dumb and blind kid\"",
																									"patching_rect" : [ 50.0, 180.0, 193.0, 16.0 ],
																									"id" : "obj-10",
																									"fontname" : "Verdana",
																									"numinlets" : 2,
																									"numoutlets" : 1,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "" ],
																									"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "jcom.receive \"that deaf dumb and blind kid\"",
																									"patching_rect" : [ 50.0, 225.0, 228.0, 18.0 ],
																									"id" : "obj-22",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 2,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "", "" ],
																									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "jcom.send jcom.remote.module.to",
																									"linecount" : 2,
																									"patching_rect" : [ 61.0, 119.0, 125.0, 30.0 ],
																									"id" : "obj-25",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 1,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "" ],
																									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "sprintf %s:/dump",
																									"patching_rect" : [ 60.0, 95.0, 193.0, 18.0 ],
																									"id" : "obj-26",
																									"fontname" : "Verdana",
																									"numinlets" : 1,
																									"numoutlets" : 1,
																									"fontsize" : 9.873845,
																									"outlettype" : [ "" ]
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-2", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 7 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 6 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 5 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 4 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 3 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 2 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 1 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-24", 0 ],
																									"destination" : [ "obj-20", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-22", 0 ],
																									"destination" : [ "obj-24", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-22", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-10", 0 ],
																									"destination" : [ "obj-22", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-26", 0 ],
																									"destination" : [ "obj-25", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 1 ],
																									"destination" : [ "obj-26", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 2 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-10", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
																						"default_fontface" : 0,
																						"fontname" : "Arial",
																						"default_fontname" : "Arial",
																						"globalpatchername" : "",
																						"default_fontsize" : 10.0,
																						"fontface" : 0,
																						"fontsize" : 10.0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 20.0, 210.0, 18.0, 18.0 ],
																					"id" : "obj-36",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pak ramp 0",
																					"patching_rect" : [ 250.0, 670.0, 61.0, 18.0 ],
																					"id" : "obj-33",
																					"fontname" : "Arial",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl join",
																					"patching_rect" : [ 225.0, 595.0, 273.0, 18.0 ],
																					"id" : "obj-32",
																					"fontname" : "Arial",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate 2",
																					"patching_rect" : [ 200.0, 645.0, 43.5, 18.0 ],
																					"id" : "obj-27",
																					"fontname" : "Arial",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t 2",
																					"patching_rect" : [ 325.0, 555.0, 22.0, 18.0 ],
																					"id" : "obj-25",
																					"fontname" : "Arial",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t 1",
																					"patching_rect" : [ 285.0, 555.0, 22.0, 18.0 ],
																					"id" : "obj-24",
																					"fontname" : "Arial",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sel none",
																					"patching_rect" : [ 285.0, 530.0, 60.0, 18.0 ],
																					"id" : "obj-23",
																					"fontname" : "Arial",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontsize" : 10.0,
																					"outlettype" : [ "bang", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl join",
																					"patching_rect" : [ 225.0, 695.0, 44.0, 18.0 ],
																					"id" : "obj-20",
																					"fontname" : "Arial",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl slice 1",
																					"patching_rect" : [ 250.0, 505.0, 51.0, 18.0 ],
																					"id" : "obj-19",
																					"fontname" : "Arial",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 245.0, 35.0, 18.0, 18.0 ],
																					"id" : "obj-13",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "name jcom.remote.module.from",
																					"patching_rect" : [ 280.0, 444.0, 170.0, 16.0 ],
																					"id" : "obj-9",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ],
																					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "name \"that deaf dumb and blind kid\"",
																					"patching_rect" : [ 250.0, 425.0, 193.0, 16.0 ],
																					"id" : "obj-10",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ],
																					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "jcom.receive \"that deaf dumb and blind kid\"",
																					"patching_rect" : [ 250.0, 470.0, 228.0, 18.0 ],
																					"id" : "obj-15",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "", "" ],
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "jcom.send jcom.remote.module.to",
																					"patching_rect" : [ 275.0, 375.0, 182.0, 18.0 ],
																					"id" : "obj-17",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ],
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sprintf %s:/ramp/drive/get",
																					"patching_rect" : [ 275.0, 350.0, 146.0, 18.0 ],
																					"id" : "obj-18",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"fontsize" : 9.873845,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t s b s b",
																					"patching_rect" : [ 225.0, 320.0, 97.0, 19.0 ],
																					"id" : "obj-4",
																					"fontname" : "Verdana",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "bang", "", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "* 1000.",
																					"patching_rect" : [ 265.0, 645.0, 42.0, 18.0 ],
																					"id" : "obj-3",
																					"fontname" : "Arial",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"patching_rect" : [ 140.0, 155.0, 59.5, 18.0 ],
																					"id" : "obj-2",
																					"fontname" : "Arial",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate 2 1",
																					"patching_rect" : [ 140.0, 185.0, 104.0, 18.0 ],
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r  #0_rampTime",
																					"patching_rect" : [ 265.0, 620.0, 87.0, 18.0 ],
																					"id" : "obj-85",
																					"fontname" : "Arial",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r  #0_ramp",
																					"patching_rect" : [ 140.0, 130.0, 65.0, 18.0 ],
																					"id" : "obj-84",
																					"fontname" : "Arial",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"fontsize" : 10.0,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl slice 1",
																					"patching_rect" : [ 225.0, 215.0, 265.0, 19.0 ],
																					"id" : "obj-26",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontsize" : 10.0,
																					"outlettype" : [ "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 280.0, 10.0, 25.0, 25.0 ],
																					"id" : "obj-28",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 140.0, 730.0, 25.0, 25.0 ],
																					"id" : "obj-29",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-29", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-34", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 1 ],
																					"destination" : [ "obj-34", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-34", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-22", 1 ],
																					"hidden" : 0,
																					"midpoints" : [ 234.5, 122.0, 88.0, 122.0, 88.0, 142.0, 88.5, 142.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-26", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-1", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-31", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-21", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 1 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-31", 0 ],
																					"destination" : [ "obj-21", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-31", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-84", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 1 ],
																					"destination" : [ "obj-26", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-85", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-10", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-17", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-19", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 1 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-24", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 1 ],
																					"destination" : [ "obj-25", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-25", 0 ],
																					"destination" : [ "obj-27", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 0 ],
																					"destination" : [ "obj-27", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 0 ],
																					"destination" : [ "obj-27", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-32", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 1 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 3 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 2 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-26", 1 ],
																					"destination" : [ "obj-32", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-33", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-33", 0 ],
																					"destination" : [ "obj-20", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-27", 1 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-27", 0 ],
																					"destination" : [ "obj-29", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 0 ],
																					"destination" : [ "obj-29", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-38", 0 ],
																					"destination" : [ "obj-22", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-22", 0 ],
																					"destination" : [ "obj-39", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-39", 0 ],
																					"destination" : [ "obj-36", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"fontname" : "Arial",
																		"default_fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontsize" : 10.0,
																		"fontface" : 0,
																		"fontsize" : 10.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l tab tab tab tab cr",
																	"patching_rect" : [ 175.0, 360.0, 120.0, 19.0 ],
																	"id" : "obj-24",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 6,
																	"fontsize" : 10.0,
																	"outlettype" : [ "", "tab", "tab", "tab", "tab", "cr" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t cr l cr cr",
																	"patching_rect" : [ 390.0, 300.0, 66.0, 19.0 ],
																	"id" : "obj-23",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontsize" : 10.0,
																	"outlettype" : [ "cr", "", "cr", "cr" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b s b",
																	"patching_rect" : [ 150.0, 88.0, 40.0, 18.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang", "", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "This stops jcom.receive from listening if we are not currently requesting the names of all modules.",
																	"linecount" : 3,
																	"patching_rect" : [ 352.0, 173.0, 210.0, 42.0 ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "name jcom.remote.module.from",
																	"patching_rect" : [ 180.0, 184.0, 170.0, 16.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "name \"that deaf dumb and blind kid\"",
																	"patching_rect" : [ 150.0, 165.0, 193.0, 16.0 ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t s s s",
																	"patching_rect" : [ 150.0, 45.0, 261.0, 18.0 ],
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.oscroute /parameter_value",
																	"patching_rect" : [ 150.0, 262.0, 171.0, 18.0 ],
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf # Module %s",
																	"patching_rect" : [ 390.0, 278.0, 112.0, 18.0 ],
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.receive \"that deaf dumb and blind kid\"",
																	"patching_rect" : [ 150.0, 210.0, 228.0, 18.0 ],
																	"id" : "obj-15",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "", "" ],
																	"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.oscroute /*",
																	"patching_rect" : [ 150.0, 233.0, 93.0, 18.0 ],
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.send jcom.remote.module.to",
																	"patching_rect" : [ 160.0, 140.0, 182.0, 18.0 ],
																	"id" : "obj-17",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %s/parameter_values:/dump",
																	"patching_rect" : [ 161.0, 113.0, 193.0, 18.0 ],
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 150.0, 25.0, 15.0, 15.0 ],
																	"id" : "obj-19",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 218.0, 570.0, 19.0, 19.0 ],
																	"id" : "obj-20",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "This part introduces a comment to mark the beginning of a new module",
																	"linecount" : 2,
																	"patching_rect" : [ 365.0, 245.0, 192.0, 30.0 ],
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 9.873845
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 1 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 1 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 2 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 3 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 4 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 5 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-30", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 1 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 280.5, 76.0, 134.0, 76.0, 134.0, 300.0, 134.5, 300.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 2 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 1 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 3 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p get_names_of_modules",
													"patching_rect" : [ 104.0, 127.0, 137.0, 18.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 361.0, 282.0, 322.0, 336.0 ],
														"bglocked" : 0,
														"defrect" : [ 361.0, 282.0, 322.0, 336.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl reg",
																	"patching_rect" : [ 55.0, 137.666672, 51.0, 19.0 ],
																	"id" : "obj-19",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontsize" : 10.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 1",
																	"patching_rect" : [ 55.0, 109.666664, 34.0, 19.0 ],
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontsize" : 10.0,
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t dump",
																	"patching_rect" : [ 55.0, 53.666668, 46.0, 19.0 ],
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0,
																	"outlettype" : [ "dump" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll #1Cue_Modules 1",
																	"patching_rect" : [ 55.0, 81.666664, 146.0, 17.0 ],
																	"id" : "obj-17",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontsize" : 9.242982,
																	"outlettype" : [ "", "", "", "" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route symbol",
																	"patching_rect" : [ 55.0, 165.666672, 74.0, 18.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.873845,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 55.0, 25.0, 15.0, 15.0 ],
																	"id" : "obj-12",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 55.0, 193.666672, 15.0, 15.0 ],
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 1 ],
																	"destination" : [ "obj-19", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 64.5, 183.0, 64.0, 183.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 64.5, 156.0, 64.5, 156.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 82.0, 6.0, 24.0, 24.0 ],
													"id" : "obj-6",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-12", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 5 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 2 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 91.5, 78.0, 24.5, 78.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 4 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 3 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-30", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-90", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-90", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-90", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj CueManager",
									"patching_rect" : [ 131.0, 463.0, 215.0, 20.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj quickie CueManager",
									"patching_rect" : [ 820.0, 10.0, 143.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 2 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [ 238.5, 500.0, 301.5, 500.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-111", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 6 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 5 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 4 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-129", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-129", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 83.5, 305.0, 28.5, 305.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-129", 0 ],
									"destination" : [ "obj-127", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 11 ],
									"destination" : [ "obj-136", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 10 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 9 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 8 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 7 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 4 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 3 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 2 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 12 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 140.5, 420.0, 84.5, 420.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 453.0, 140.5, 453.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 2 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 197.5, 453.0, 140.5, 453.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 174.5, 453.0, 140.5, 453.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 10.0, 198.0, 19.0, 19.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 10.0, 143.0, 18.0, 18.0 ],
					"id" : "obj-35",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.hub @module_type control @description \"a cue list module\"",
					"linecount" : 2,
					"patching_rect" : [ 10.0, 165.0, 155.0, 29.0 ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sec.",
					"patching_rect" : [ 942.0, 392.0, 29.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-20",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 273.0, 80.0, 29.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 910.0, 390.0, 34.0, 20.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"fontsize" : 12.0,
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 240.0, 80.0, 34.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"bordercolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"patching_rect" : [ 848.0, 390.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 180.0, 80.0, 20.0, 20.0 ],
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 0.568627 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ramp in ",
					"patching_rect" : [ 864.0, 391.0, 47.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 200.0, 80.0, 45.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sec. ",
					"patching_rect" : [ 804.0, 391.0, 41.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-16",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 140.0, 80.0, 41.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 779.0, 390.0, 22.0, 20.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"fontsize" : 12.0,
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 105.0, 80.0, 35.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "after",
					"patching_rect" : [ 745.0, 391.0, 31.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 80.0, 80.0, 30.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 765.0, 368.0, 75.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "as next step",
					"presentation_rect" : [ 5.0, 80.0, 74.0, 20.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.568627 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"patching_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"presentation" : 1,
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"has_panel" : 1,
					"bgcolor" : [ 0.2, 0.0, 0.1, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 187.0, 15.0, 50.0, 17.0 ],
					"id" : "obj-34",
					"fontname" : "Geneva",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bgcolor 0 0 0 1",
					"patching_rect" : [ 592.0, 598.0, 77.0, 16.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 3 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [ 247.300003, 501.0, 247.5, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-135", 0 ],
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
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 479.5, 469.0, 455.0, 469.0, 455.0, 402.0, 479.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 113.5, 430.0, 98.0, 430.0, 98.0, 405.0, 17.5, 405.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 882.5, 228.0, 816.0, 228.0, 816.0, 228.0, 775.5, 228.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-113", 1 ],
					"hidden" : 0,
					"midpoints" : [ 896.0, 238.0, 830.5, 238.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 172.0, 250.5, 172.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 223.0, 17.0, 223.0, 17.0, 396.0, 17.5, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 776.5, 111.0, 772.0, 111.0, 772.0, 111.0, 753.0, 111.0, 753.0, 10.0, 776.5, 10.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-78", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 33.5, 395.0, 17.5, 395.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 1 ],
					"destination" : [ "obj-60", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 479.5, 554.0, 456.0, 554.0, 456.0, 488.0, 479.5, 488.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 4 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 323.899994, 488.0, 479.5, 488.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 479.5, 527.0, 549.0, 527.0, 549.0, 527.0, 587.5, 527.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 607.0, 181.5, 607.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 67.5, 606.0, 181.5, 606.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 705.5, 175.0, 775.5, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 651.0, 278.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 651.0, 278.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 17.5, 650.0, 278.5, 650.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 116.5, 395.0, 118.0, 395.0, 118.0, 395.0, 17.5, 395.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 250.5, 251.0, 116.5, 251.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 3 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 2 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
