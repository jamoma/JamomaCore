{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 136.0, 113.0, 1080.0, 525.0 ],
		"bglocked" : 0,
		"defrect" : [ 136.0, 113.0, 1080.0, 525.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"presentation_rect" : [ 265.0, 45.0, 28.0, 19.0 ],
					"patching_rect" : [ 625.0, 389.0, 50.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"presentation_rect" : [ 236.0, 45.0, 28.0, 19.0 ],
					"patching_rect" : [ 568.0, 389.0, 50.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"presentation_rect" : [ 207.0, 45.0, 28.0, 19.0 ],
					"patching_rect" : [ 505.0, 389.0, 50.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"fontsize" : 10.0,
					"patching_rect" : [ 510.0, 358.0, 154.0, 19.0 ],
					"numinlets" : 11,
					"id" : "obj-57",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"presentation_rect" : [ 92.0, 21.0, 20.0, 19.0 ],
					"patching_rect" : [ 347.0, 57.0, 50.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-53",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontsize" : 10.0,
					"presentation_rect" : [ 151.0, 42.0, 39.0, 20.0 ],
					"text" : "reset",
					"patching_rect" : [ 415.0, 261.0, 100.0, 20.0 ],
					"texton" : "On",
					"presentation" : 1,
					"numinlets" : 1,
					"rounded" : 10.0,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontsize" : 10.0,
					"presentation_rect" : [ 125.0, 42.0, 25.0, 20.0 ],
					"mode" : 1,
					"text" : "Off",
					"patching_rect" : [ 568.0, 125.0, 100.0, 20.0 ],
					"texton" : "On",
					"presentation" : 1,
					"numinlets" : 1,
					"rounded" : 10.0,
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "attractpoint/xyz[1]",
					"text" : "jcom.parameter attractpoint @type msg_list @description \"Current position of the point of attraction in xyz-coordinates\"",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 670.0, 358.0, 558.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[1]",
					"text" : "jcom.message update @type msg_none @description \"updates boids from external clock\"",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 413.0, 313.0, 467.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message random_reset @type msg_none @description \"reset boids randomly inside the flyrect\"",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 415.0, 284.0, 482.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Mode",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 28.0, 427.0, 57.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @type msg_int @description \"Turn boids on/off\"",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 29.0, 449.0, 332.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Mode",
					"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"fontsize" : 9.0,
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"presentation_rect" : [ 119.0, 22.0, 88.0, 17.0 ],
					"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
					"items" : [ "new(xyz)", ",", "new(xyz)/old(xyz)", ",", "new(xyz)/old(xyz)/speed/azi/ele" ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"patching_rect" : [ 106.0, 20.0, 61.0, 17.0 ],
					"types" : [  ],
					"arrowlink" : 1,
					"presentation" : 1,
					"numinlets" : 1,
					"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numoutlets" : 3,
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"pattrmode" : 1,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"fontsize" : 9.0,
					"patching_rect" : [ 121.0, 174.0, 133.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"patching_rect" : [ 43.0, 218.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"fontsize" : 9.0,
					"patching_rect" : [ 43.0, 196.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "open" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontsize" : 9.0,
					"patching_rect" : [ 43.0, 239.0, 67.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 840.0, 184.0, 306.0, 414.0 ],
						"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 840.0, 184.0, 306.0, 414.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"title" : "Boids3d-settings",
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Minspeed",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 82.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 82.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Maxspeed",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 101.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 101.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "back",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 391.0, 30.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 391.0, 30.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "front",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 373.0, 32.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 373.0, 32.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "right",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 335.0, 32.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 335.0, 32.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bottom",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 353.0, 42.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 353.0, 42.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "top",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 316.0, 23.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 316.0, 23.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Prefdist",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 278.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 278.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Accel",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 261.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 261.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Inertia",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 243.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 243.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Speed",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 226.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 226.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Edgedist",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 210.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 210.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Repel",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 193.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 193.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Avoid",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 175.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 175.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Match",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 155.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 155.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Attract",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 137.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 137.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Neighbors",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 65.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 65.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Center",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 1.0, 119.0, 28.0, 17.0 ],
									"patching_rect" : [ 1.0, 119.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar bb6",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 148.0, 451.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar bb5",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 130.0, 472.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar bb4",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 94.0, 451.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "bb6",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 2.0, 391.0, 29.0, 17.0 ],
									"patching_rect" : [ 2.0, 391.0, 29.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "bb5",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 2.0, 373.0, 29.0, 17.0 ],
									"patching_rect" : [ 2.0, 373.0, 29.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "bb4",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 2.0, 353.0, 29.0, 17.0 ],
									"patching_rect" : [ 2.0, 353.0, 29.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "bb3",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 2.0, 335.0, 29.0, 17.0 ],
									"patching_rect" : [ 2.0, 335.0, 29.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "bb2",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 2.0, 316.0, 29.0, 17.0 ],
									"patching_rect" : [ 2.0, 316.0, 29.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar bb3",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 78.0, 473.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar bb2",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 38.0, 451.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar bb1",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 26.0, 474.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.list2parameter 6",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 28.0, 497.0, 144.0, 17.0 ],
									"numinlets" : 11,
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "flyrect",
									"text" : "jcom.parameter flyrect @type msg_list @ramp/drive scheduler @repetitions/allow 1 @range/bounds -1. 1. @range/clipmode both @description \"bounding box (walls) in which to fly (left/top/right/bottom/front/back)\"",
									"linecount" : 3,
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 178.0, 487.0, 376.0, 39.0 ],
									"numinlets" : 1,
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "bb1",
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 2.0, 299.0, 29.0, 17.0 ],
									"patching_rect" : [ 2.0, 299.0, 29.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-32",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bounding box (walls) in which to fly",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 74.0, 332.0, 107.0, 28.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 74.0, 332.0, 107.0, 28.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-33",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Prefdist",
									"fontsize" : 9.0,
									"patching_rect" : [ 803.0, 727.0, 71.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "prefdist",
									"text" : "jcom.parameter prefdist @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"preferred distance from neighbors\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 802.0, 746.0, 373.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-35",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Accel",
									"fontsize" : 9.0,
									"patching_rect" : [ 460.0, 727.0, 59.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-36",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "acceleration",
									"text" : "jcom.parameter acceleration @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"speed of acceleration\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 460.0, 747.0, 386.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-37",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Inertia",
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 664.0, 64.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-38",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "inertia",
									"text" : "jcom.parameter inertia @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"willingness to change speed and direction\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 684.0, 392.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-39",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Speed",
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 601.0, 60.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "speed",
									"text" : "jcom.parameter speed @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"overall speed\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 621.0, 350.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Edgedist",
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 540.0, 71.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-42",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "edgedist",
									"text" : "jcom.parameter edgedist @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"distance of vision for avoiding wall edges\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 560.0, 389.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-43",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Repel",
									"fontsize" : 9.0,
									"patching_rect" : [ 544.0, 477.0, 58.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-44",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "repel",
									"text" : "jcom.parameter repel @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"strengh of wall avoidance instinct\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 544.0, 497.0, 367.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-45",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Avoid",
									"fontsize" : 9.0,
									"patching_rect" : [ 544.0, 415.0, 60.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "avoid",
									"text" : "jcom.parameter avoid @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"strength of neighbor avoidance instinct\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 544.0, 435.0, 380.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-47",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "strength of attraction to 'attractpt'",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 137.0, 170.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 137.0, 170.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-48",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "strength of centering instinct",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 119.0, 142.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 119.0, 142.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-49",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maximum speed of speed range",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 100.0, 154.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 100.0, 154.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-50",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "minimum speed of speed range",
									"fontsize" : 9.0,
									"presentation_rect" : [ 34.0, 83.0, 152.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 34.0, 83.0, 152.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-51",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of neighbors each boid consults when flocking",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 65.0, 255.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 65.0, 255.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-52",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Match",
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 349.0, 61.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-53",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "match",
									"text" : "jcom.parameter match @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"strength of neighbor speed matching instinct\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 369.0, 402.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-54",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Attract",
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 282.0, 68.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-55",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "attract",
									"text" : "jcom.parameter attract @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"strength of attraction to 'attractpoint'\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 302.0, 381.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-56",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Center",
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 218.0, 64.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-57",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "center",
									"text" : "jcom.parameter center @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"strength of centering instinct\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 238.0, 367.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-58",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Minspeed",
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 156.0, 75.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-59",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "minspeed",
									"text" : "jcom.parameter minspeed @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"minimum speed of speed range\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 176.0, 382.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-60",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Maxspeed",
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 95.0, 78.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-61",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "maxspeed",
									"text" : "jcom.parameter maxspeed @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"maximum speed of speed range\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 115.0, 385.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-62",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Neighbors",
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 33.0, 78.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-63",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "neighbors",
									"text" : "jcom.parameter neighbors @repetitions/allow 0 @type msg_float @range/bounds 0. 100. @range/clipmode low @description \"number of neighbors each boid consults when flocking\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 458.0, 53.0, 426.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-64",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"patching_rect" : [ 44.0, 542.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-68",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "preferred distance from neighbors",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 278.0, 165.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 278.0, 165.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-70",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "speed of acceleration",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 261.0, 105.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 261.0, 105.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-71",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "willingness to change speed and direction",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 243.0, 197.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 243.0, 197.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-72",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "overall speed",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 226.0, 70.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 226.0, 70.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-73",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "distance of vision for avoiding wall edges",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 210.0, 196.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 210.0, 196.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-74",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "strengh of wall avoidance instinct",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 193.0, 162.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 193.0, 162.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-75",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "strength of neighbor avoidance instinct",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 175.0, 186.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 175.0, 186.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-76",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "strength of neighbor speed matching instinct",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 155.0, 212.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 155.0, 212.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-77",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess patcher Colorblobs",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 15.0, 757.0, 139.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-78",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 4.0, 735.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-79",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /open_inspector",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 4.0, 710.0, 151.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-80",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"patching_rect" : [ 4.0, 683.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-81",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 15.0, 777.0, 61.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-82",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 400 615, window exec",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 207.0, 230.0, 214.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-83",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 357.0, 292.0, 59.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-84",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 94.0, 372.0, 239.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-86",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 95.0, 393.0, 158.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-87",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "left",
									"fontsize" : 9.0,
									"presentation_rect" : [ 32.0, 299.0, 100.0, 17.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 32.0, 299.0, 100.0, 17.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-88",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "extended settings",
									"fontsize" : 18.0,
									"presentation_rect" : [ 48.0, 22.0, 211.0, 28.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"patching_rect" : [ 48.0, 22.0, 211.0, 28.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-89",
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 811.5, 780.0, 796.0, 780.0, 796.0, 722.0, 812.5, 722.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 553.5, 530.0, 537.0, 530.0, 537.0, 472.0, 553.5, 472.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [ 553.5, 468.0, 537.0, 468.0, 537.0, 410.0, 553.5, 410.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 469.5, 780.0, 453.0, 780.0, 453.0, 722.0, 469.5, 722.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 467.5, 717.0, 451.0, 717.0, 451.0, 659.0, 467.5, 659.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 467.5, 654.0, 451.0, 654.0, 451.0, 596.0, 467.5, 596.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 467.5, 593.0, 451.0, 593.0, 451.0, 535.0, 467.5, 535.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [ 467.5, 402.0, 451.0, 402.0, 451.0, 344.0, 467.5, 344.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 467.5, 335.0, 451.0, 335.0, 451.0, 277.0, 467.5, 277.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [ 467.5, 271.0, 451.0, 271.0, 451.0, 213.0, 467.5, 213.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
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
									"midpoints" : [ 467.5, 209.0, 451.0, 209.0, 451.0, 151.0, 467.5, 151.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [ 467.5, 148.0, 451.0, 148.0, 451.0, 90.0, 467.5, 90.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [ 467.5, 86.0, 451.0, 86.0, 451.0, 28.0, 467.5, 28.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 10 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-30", 10 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 5 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [ 100.0, 545.0, 3.0, 545.0, 3.0, 418.0, 156.0, 418.0, 157.5, 449.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 4 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [ 87.5, 540.0, 4.0, 540.0, 4.0, 426.0, 139.5, 426.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 3 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [ 75.0, 534.0, 8.0, 534.0, 8.0, 432.0, 103.5, 432.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-30", 5 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-30", 4 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 2 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [ 62.5, 531.0, 11.0, 531.0, 11.0, 438.0, 87.5, 438.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-30", 3 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-30", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [ 50.0, 525.0, 14.0, 525.0, 14.0, 449.0, 47.5, 449.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [ 37.5, 520.0, 21.0, 520.0, 21.0, 471.0, 35.5, 471.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-80", 0 ],
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
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Center X/Y/Z",
					"fontsize" : 10.0,
					"presentation_rect" : [ 214.0, 23.0, 77.0, 19.0 ],
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"patching_rect" : [ 173.0, 30.0, 77.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "on",
					"text" : "jcom.parameter on @type msg_toggle @description \"Turn boids on/off\"",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 691.0, 128.0, 334.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 49.0, 71.0, 191.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 9.0,
					"patching_rect" : [ 119.0, 154.0, 43.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Update rate [Hz]",
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 42.0, 94.0, 19.0 ],
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"patching_rect" : [ 0.0, 42.0, 94.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"patching_rect" : [ 119.0, 220.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontsize" : 9.0,
					"patching_rect" : [ 119.0, 200.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"presentation_rect" : [ 93.0, 42.0, 29.0, 19.0 ],
					"patching_rect" : [ 709.0, 165.0, 50.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "updaterate",
					"text" : "jcom.parameter updaterate @type msg_int @range/bounds 0 50 @range/clipmode low @description \"updaterate of the flock\"",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 709.0, 185.0, 583.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 9.0,
					"patching_rect" : [ 185.0, 88.0, 31.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.boids3d.maxpat",
					"fontsize" : 9.0,
					"patching_rect" : [ 119.0, 291.0, 103.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of boids",
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 22.0, 92.0, 19.0 ],
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"patching_rect" : [ 0.0, 22.0, 92.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.boids3d @description \"Jamoma implementation of Boids3D by Eric L. Singer\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 15.0, 113.0, 248.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 16.0, 89.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"id" : "obj-38",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 16.0, 315.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"id" : "obj-39",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "number",
					"text" : "jcom.parameter number @repetitions/allow 0 @type msg_int @range/bounds 0 32 @range/clipmode both @description \"number of boids\"",
					"linecount" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 410.0, 59.0, 601.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/updaterate 33",
					"fontsize" : 9.0,
					"patching_rect" : [ 224.0, 277.0, 153.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 9.0,
					"patching_rect" : [ 225.0, 257.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 56.0, 88.0, 125.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"patching_rect" : [ -1.0, 0.0, 300.0, 70.0 ],
					"has_panel" : 1,
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-45",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-57", 2 ],
					"hidden" : 0,
					"midpoints" : [ 634.5, 429.0, 492.0, 429.0, 492.0, 346.0, 546.5, 346.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [ 577.5, 422.0, 497.0, 422.0, 497.0, 351.0, 533.0, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 514.5, 417.0, 503.0, 417.0, 503.0, 355.0, 519.5, 355.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 194.5, 109.0, 24.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 65.5, 109.0, 24.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 58.5, 109.0, 24.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 188.5, 248.0, 234.5, 248.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [ 38.5, 472.0, 21.0, 472.0, 21.0, 419.0, 37.5, 419.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [ 718.5, 216.0, 702.0, 216.0, 702.0, 158.0, 718.5, 158.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 130.5, 193.0, 52.5, 193.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 244.5, 197.0, 128.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 10 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-57", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 188.5, 268.0, 128.5, 268.0 ]
				}

			}
 ]
	}

}
