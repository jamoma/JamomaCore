{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 20.0, 44.0, 1420.0, 817.0 ],
		"bglocked" : 0,
		"defrect" : [ 20.0, 44.0, 1420.0, 817.0 ],
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
					"text" : "p load_play",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 430.0, 66.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 780.0, 44.0, 202.0, 267.0 ],
						"bglocked" : 0,
						"defrect" : [ 780.0, 44.0, 202.0, 267.0 ],
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
									"text" : "jcom.oscroute /file",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 57.0, 101.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l 0",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 113.0, 40.0, 18.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 149.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/play $1",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 71.0, 177.0, 52.0, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /sf_open",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 84.0, 98.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 47.0, 34.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 196.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
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
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/file_browser[1]",
					"numinlets" : 1,
					"args" : [ "/file_browser1" ],
					"patching_rect" : [ 11.0, 357.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"name" : "jmod.file_browser.maxpat",
					"presentation_rect" : [ 30.0, 30.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.input~",
					"numinlets" : 2,
					"args" : [ "/jmod.sur.multi.input~" ],
					"patching_rect" : [ 12.0, 452.0, 300.0, 70.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-52",
					"name" : "jmod.sur.multi.input~.maxpat",
					"presentation_rect" : [ 57.0, 166.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"minimum" : 0.0,
					"patching_rect" : [ 167.0, 136.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"minimum" : 0.0,
					"patching_rect" : [ 115.0, 136.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "move source after",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 217.0, 168.0, 89.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "temps réel",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 73.0, 206.0, 59.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"minimum" : 0.0,
					"patching_rect" : [ 271.0, 136.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 1. 1. 1. 1.",
					"fontsize" : 12.0,
					"numinlets" : 4,
					"patching_rect" : [ 132.0, 166.0, 83.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"patching_rect" : [ 340.0, 621.0, 58.0, 20.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /channels",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 338.0, 668.0, 104.0, 19.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /numSpeakers",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 338.0, 643.0, 114.0, 19.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p signal_in",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 309.0, 548.0, 65.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-39",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
									"text" : "pink~",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 44.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"fontname" : "Verdana",
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.multi.in~",
									"fontsize" : 10.0,
									"numinlets" : 32,
									"patching_rect" : [ 50.0, 122.0, 206.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 201.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-32",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
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
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toDBAP",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"patching_rect" : [ 132.0, 267.0, 61.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"patching_rect" : [ 156.0, 213.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"minimum" : 0.0,
					"patching_rect" : [ 219.0, 136.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.2/weight 1 1 1 1 1 1 $1 $1",
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"patching_rect" : [ 156.0, 238.0, 205.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.1/weight $1 $1 $2 $2 $3 $3 $4 $4",
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"patching_rect" : [ 132.0, 194.0, 247.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r toDisplay",
					"fontsize" : 10.970939,
					"numinlets" : 0,
					"patching_rect" : [ 560.0, 50.0, 70.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toDisplay",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"patching_rect" : [ 163.0, 661.0, 71.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display_view",
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"patching_rect" : [ 560.0, 72.5, 92.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"fontname" : "Verdana",
					"id" : "obj-71",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 24.0, 114.0, 569.0, 223.0 ],
						"bglocked" : 0,
						"defrect" : [ 24.0, 114.0, 569.0, 223.0 ],
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
									"text" : "loadbang",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 314.0, -8.0, 60.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "view_start -35. -15., view_end 35. 15.",
									"fontsize" : 10.970939,
									"numinlets" : 2,
									"patching_rect" : [ 325.0, 150.0, 225.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-67"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "view_size 70 30",
									"fontsize" : 10.970939,
									"numinlets" : 2,
									"patching_rect" : [ 312.0, 17.0, 99.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-63"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 272.0, 19.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route view_size",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 272.0, 47.0, 93.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend dim",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 272.0, 68.0, 77.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.matrix foo 4 char 80 60",
									"fontsize" : 10.970939,
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 132.5, 157.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"fontname" : "Verdana",
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "setcell $1 $2 val 0 $3 $3 $3",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 100.0, 84.5, 152.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route view",
									"fontsize" : 10.970939,
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 45.5, 69.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route bang",
									"fontsize" : 10.970939,
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 81.5, 71.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 26.0, 17.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-69",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 162.5, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-70",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [ 35.5, 74.5, 109.5, 74.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 109.5, 123.0, 35.5, 123.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 281.5, 123.75, 35.5, 123.75 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"minimum" : 0.0,
					"patching_rect" : [ 24.0, 202.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"maximum" : 1.0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.1/blur $1",
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"patching_rect" : [ 24.0, 237.0, 107.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p speakers_setup",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 451.0, 46.0, 105.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 229.0, 908.0, 477.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 229.0, 908.0, 477.0 ],
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
									"text" : "deferlow",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 108.0, 42.0, 56.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/numSpeakers 8",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 414.0, 105.0, 94.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 108.0, 15.0, 60.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/speaker.1/position -10 0 0, /speaker.2/position 10 0 0, /speaker.3/position -20 0 0, /speaker.4/position 20 0 0, /speaker.5/position -30 0 0, /speaker.6/position 30 0 0, /speaker.7/position 0 10 0, /speaker.8/position 0 -10 0",
									"linecount" : 4,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 107.0, 70.0, 297.0, 53.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pourquoi les presets sont ils -5 5 ?",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 597.0, 314.0, 209.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "il y a un problème d'échelle, car ce hack est -1 1",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 347.0, 272.0, 161.0, 34.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"args" : [  ],
									"patching_rect" : [ 127.0, 183.0, 201.0, 216.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"name" : "ambimonitor.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"args" : [ "/setup" ],
									"patching_rect" : [ 543.0, 234.0, 150.0, 70.0 ],
									"numoutlets" : 1,
									"lockeddragscroll" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"name" : "jmod.sur.speaker.setup.maxpat",
									"presentation_rect" : [ 60.0, 60.0, 150.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.position2ambimonitor @prefix speaker @radius 10",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 108.0, 134.0, 294.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.ambimonitor2position @prefix speaker @radius 10",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 88.0, 408.0, 294.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 468.0, 447.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 445.0, 62.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p sources_setup",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 346.0, 45.0, 99.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1.0, 321.0, 908.0, 477.0 ],
						"bglocked" : 0,
						"defrect" : [ 1.0, 321.0, 908.0, 477.0 ],
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
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 529.0, 210.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 529.0, 233.0, 54.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "xyz -10 10",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 414.0, 444.0, 161.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pourquoi les presets sont ils -5 5 ?",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 686.0, 61.0, 209.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "il y a un problème d'échelle, car ce hack est -1 1",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 134.0, 272.0, 161.0, 34.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"args" : [  ],
									"patching_rect" : [ 309.0, 189.0, 201.0, 216.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"name" : "ambimonitor.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.position2ambimonitor @prefix speaker @radius 10",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 530.0, 138.0, 294.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"args" : [ "/setup" ],
									"patching_rect" : [ 530.0, 41.0, 150.0, 70.0 ],
									"numoutlets" : 1,
									"lockeddragscroll" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"name" : "jmod.sur.speaker.setup.maxpat",
									"presentation_rect" : [ 60.0, 60.0, 150.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.position2ambimonitor @prefix source @radius 10",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 108.0, 136.0, 287.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.ambimonitor2xyz @radius 10",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 317.0, 413.0, 186.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 386.0, 441.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/source.1/position 0 0 0, /source.2/position 5 0 0, /source.3/position -10 5 0, /source.4/position 15 0 0",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 108.0, 85.0, 288.0, 29.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-4"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 538.5, 404.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toDBAP",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"patching_rect" : [ 346.0, 97.0, 61.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.4/position 15. 0. 0.",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 860.0, 358.0, 205.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r toVBAP",
					"fontsize" : 10.970939,
					"numinlets" : 0,
					"patching_rect" : [ 785.0, 661.0, 59.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toVBAP",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"patching_rect" : [ 773.0, 387.0, 60.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.vbap~",
					"numinlets" : 2,
					"args" : [ "/jmod.sur.vbap~" ],
					"patching_rect" : [ 786.0, 686.0, 300.0, 70.0 ],
					"numoutlets" : 2,
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-32",
					"name" : "jmod.sur.vbap~.maxpat",
					"presentation_rect" : [ 45.0, 45.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.ambimonitor2position @prefix source",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 840.0, 335.0, 228.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"args" : [  ],
					"patching_rect" : [ 451.0, 104.0, 612.0, 226.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-8",
					"name" : "nd.monitor.maxpat",
					"presentation_rect" : [ 384.0, 20.0, 612.0, 226.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 2,
					"args" : [ "meter" ],
					"patching_rect" : [ 339.0, 691.0, 300.0, 140.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-11",
					"name" : "jmod.sur.meters~.maxpat",
					"presentation_rect" : [ 414.0, 446.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"numinlets" : 2,
					"args" : [ "/output~" ],
					"patching_rect" : [ 24.0, 691.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"name" : "jmod.sur.output~.maxpat",
					"presentation_rect" : [ 30.0, 30.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toDBAP",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"patching_rect" : [ 840.0, 387.0, 61.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r toDBAP",
					"fontsize" : 10.970939,
					"numinlets" : 0,
					"patching_rect" : [ 24.0, 560.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 2,
					"args" : [ "/dbap~" ],
					"patching_rect" : [ 24.0, 584.0, 300.0, 70.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-47",
					"name" : "jmod.nd.dbap~.maxpat",
					"presentation_rect" : [ 15.0, 15.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"patching_rect" : [ 413.0, 101.0, 677.0, 250.0 ],
					"numoutlets" : 2,
					"interp" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-60"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-6", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 2 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 2 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
