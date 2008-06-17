{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 65.0, 529.0, 501.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 65.0, 529.0, 501.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.970939,
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
					"varname" : "sub patch[3]",
					"text" : "p rotary_lower",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 188.0, 202.0, 81.0, 18.0 ],
					"id" : "obj-1",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 544.0, 279.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 544.0, 279.0 ],
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
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 46.0, 167.0, 68.0, 18.0 ],
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"numinlets" : 0,
									"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1_inport",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 27.0, 66.0, 18.0 ],
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ctlin 10 #2",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 103.0, 63.0, 18.0 ],
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "#2/rotary/upper",
									"text" : "jcom.return #2/rotary/lower @type msg_int @range/bounds 0 127 @range/clipmode both @repetitions/allow 1 @description \"Lower rotary control.\"",
									"linecount" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 46.0, 127.0, 382.0, 30.0 ],
									"id" : "obj-5",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 46.0, 194.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numoutlets" : 0,
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sub patch[2]",
					"text" : "p rotary_middle",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 188.0, 140.0, 88.0, 18.0 ],
					"id" : "obj-3",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 544.0, 279.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 544.0, 279.0 ],
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
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 46.0, 167.0, 68.0, 18.0 ],
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"numinlets" : 0,
									"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1_inport",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 79.0, 66.0, 18.0 ],
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ctlin 12 #2",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 103.0, 63.0, 18.0 ],
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "#2/rotary/upper",
									"text" : "jcom.return #2/rotary/middle @type msg_int @range/bounds 0 127 @range/clipmode both @repetitions/allow 1 @description \"Middle rotary control.\"",
									"linecount" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 46.0, 127.0, 384.0, 30.0 ],
									"id" : "obj-5",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 46.0, 194.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numoutlets" : 0,
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"varname" : "Dial3",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.094118, 0.094118, 0.094118, 1.0 ],
					"needlecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 11.0, 64.0, 27.0, 27.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 188.0, 227.0, 27.0, 27.0 ],
					"fgcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ],
					"id" : "obj-5",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlinecolor" : [ 0.419608, 0.419608, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"varname" : "Dial2",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.094118, 0.094118, 0.094118, 1.0 ],
					"needlecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 11.0, 38.0, 27.0, 27.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 188.0, 163.0, 27.0, 27.0 ],
					"fgcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ],
					"id" : "obj-6",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlinecolor" : [ 0.419608, 0.419608, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"varname" : "Dial1",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.094118, 0.094118, 0.094118, 1.0 ],
					"needlecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 11.0, 12.0, 27.0, 27.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 188.0, 93.0, 27.0, 27.0 ],
					"fgcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ],
					"id" : "obj-7",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlinecolor" : [ 0.419608, 0.419608, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "Fader",
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"settype" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"presentation_rect" : [ 17.0, 99.0, 16.0, 131.0 ],
					"contdata" : 1,
					"ghostbar" : 40,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numinlets" : 1,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 188.0, 299.0, 16.0, 131.0 ],
					"id" : "obj-8",
					"presentation" : 1,
					"thickness" : 4,
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"setminmax" : [ 0.0, 127.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.094118, 0.094118, 0.094118, 1.0 ],
					"bordercolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 51.0, 243.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 51.0, 243.0 ],
					"id" : "obj-9",
					"presentation" : 1,
					"numoutlets" : 0,
					"rounded" : 0,
					"border" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sub patch[1]",
					"text" : "p rotary_upper",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 188.0, 70.0, 83.0, 18.0 ],
					"id" : "obj-10",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 544.0, 279.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 544.0, 279.0 ],
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
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 46.0, 167.0, 68.0, 18.0 ],
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"numinlets" : 0,
									"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1_inport",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 27.0, 66.0, 18.0 ],
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ctlin 13 #2",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 103.0, 63.0, 18.0 ],
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "#2/rotary/upper",
									"text" : "jcom.return #2/rotary/upper @type msg_int @range/bounds 0 127 @range/clipmode both @repetitions/allow 1 @description \"Upper rotary control.\"",
									"linecount" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 46.0, 127.0, 382.0, 30.0 ],
									"id" : "obj-5",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 46.0, 194.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numoutlets" : 0,
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
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
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sub patch",
					"text" : "p Fader",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 188.0, 277.0, 46.0, 18.0 ],
					"id" : "obj-11",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 545.0, 312.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 545.0, 312.0 ],
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
									"text" : "prepend set 1",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 46.0, 187.0, 77.0, 18.0 ],
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1_inport",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 27.0, 66.0, 18.0 ],
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ctlin 7 #2",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 103.0, 57.0, 18.0 ],
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "#2/fader",
									"text" : "jcom.return #2/fader @type msg_int @range/bounds 0 127 @range/clipmode both @repetitions/allow 1 @description \"Fader.\"",
									"linecount" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 46.0, 127.0, 309.0, 30.0 ],
									"id" : "obj-5",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 46.0, 220.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numoutlets" : 0,
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DIM: 51 243",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 15.0, 355.0, 100.0, 18.0 ],
					"id" : "obj-14",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 194.0, 432.0, 174.0, 432.0, 174.0, 273.0, 197.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 197.5, 259.0, 174.0, 259.0, 174.0, 198.0, 197.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 197.5, 192.0, 174.0, 192.0, 174.0, 135.0, 197.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 197.5, 123.0, 174.0, 123.0, 174.0, 66.0, 197.5, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
