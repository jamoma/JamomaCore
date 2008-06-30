{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 298.0, 150.0, 792.0, 537.0 ],
		"bglocked" : 0,
		"defrect" : [ 298.0, 150.0, 792.0, 537.0 ],
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
					"text" : "jcom.oscroute /panel/open",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 193.0, 236.0, 83.0, 31.0 ],
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "%TODO: Add inspector for opening the uc-33 subpatch",
					"linecount" : 2,
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"patching_rect" : [ 16.0, 401.0, 199.0, 33.0 ],
					"numoutlets" : 0,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 584.0, 158.0, 73.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0__inport",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 584.0, 183.0, 73.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 495.0, 44.0, 54.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "MIDIIN",
					"fontname" : "Verdana",
					"presentation_rect" : [ 3.0, 44.0, 143.0, 19.0 ],
					"numinlets" : 1,
					"items" : [ "to MaxMSP 1", ",", "to MaxMSP 2" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 466.0, 97.0, 100.0, 19.0 ],
					"labelclick" : 1,
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-5",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 466.0, 72.0, 48.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p uc-33",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"patching_rect" : [ 119.0, 285.0, 77.0, 28.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 245.0, 146.0, 1098.0, 660.0 ],
						"bgcolor" : [ 0.094118, 0.094118, 0.094118, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 245.0, 146.0, 1098.0, 660.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 458.0, 230.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 632.0, 346.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-73",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 436.0, 230.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 522.0, 346.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-72",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 1.0, 0.25098, 0.25098, 1.0 ],
									"presentation_rect" : [ 480.0, 230.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 743.0, 346.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-71",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 501.0, 230.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 849.0, 346.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-70",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 468.0, 214.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 685.0, 285.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-69",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 496.0, 197.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 782.0, 229.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-66",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 468.0, 197.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 685.0, 229.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-67",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 441.0, 197.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 588.0, 229.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-68",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 496.0, 179.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 782.0, 174.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-63",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 468.0, 179.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 685.0, 174.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-62",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 441.0, 179.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 588.0, 174.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-61",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 496.0, 162.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 782.0, 103.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-60",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 468.0, 162.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 685.0, 104.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-59",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"presentation_rect" : [ 441.0, 162.0, 19.0, 13.0 ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"texton" : "",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"mode" : 1,
									"patching_rect" : [ 588.0, 104.0, 19.0, 13.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "",
									"rounded" : 0.0,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"id" : "obj-58",
									"outlettype" : [ "", "", "int" ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[14]",
									"text" : "p transp_stop",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 628.0, 367.0, 77.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 499.0, 296.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 499.0, 296.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 115.0, 22.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 96.0, 66.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 15 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 93.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "transport/record",
													"text" : "jcom.return transport/record @type msg_none @description \"Transport button: Stop.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 147.0, 441.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-6",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 177.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-7",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[13]",
									"text" : "p transp_play",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 518.0, 367.0, 77.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 499.0, 296.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 499.0, 296.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 125.0, 22.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 96.0, 76.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 14 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 103.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "transport/play",
													"text" : "jcom.return transport/play @type msg_none @description \"Transport button: Play.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 149.0, 427.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-6",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 199.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-7",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[11]",
									"text" : "p tap",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 849.0, 367.0, 34.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 499.0, 296.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 499.0, 296.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 189.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 168.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 96.0, 76.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 17 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 103.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/tap",
													"text" : "jcom.return button/tap @type msg_toggle @description \"Button labeled Tap Tempo.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 434.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 219.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[12]",
									"text" : "p transp_rec",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 743.0, 367.0, 71.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 499.0, 296.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 499.0, 296.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 189.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 168.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 96.0, 76.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 16 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 103.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "transport/record",
													"text" : "jcom.return transport/record @type msg_toggle @description \"Transport button: Record.\"",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 252.0, 30.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 224.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[8]",
									"text" : "p stop",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 685.0, 303.0, 39.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 461.0, 305.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 461.0, 305.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print ***",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"patching_rect" : [ 79.0, 231.0, 57.0, 19.0 ],
													"numoutlets" : 0,
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 189.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 167.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 72.0, 94.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 22.0, 22.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 72.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 18 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 72.0, 63.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/stop",
													"text" : "jcom.return button/stop @type msg_toggle @description \"Button labeled stop.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 405.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 234.0, 22.0, 22.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[5]",
									"text" : "p pluss",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 782.0, 247.0, 44.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 468.0, 299.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 468.0, 299.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 189.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 168.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 94.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 27 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 63.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/pluss",
													"text" : "jcom.return button/pluss @type msg_toggle @description \"Button labeled pluss.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 414.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 236.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[6]",
									"text" : "p six",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 782.0, 192.0, 32.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 443.0, 284.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 443.0, 284.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 189.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 168.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 90.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 24 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 60.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/6",
													"text" : "jcom.return button/6 @type msg_toggle @description \"Button 6.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 337.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 226.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[7]",
									"text" : "p three",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 782.0, 121.0, 44.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 499.0, 296.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 499.0, 296.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 182.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 161.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 96.0, 76.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 21 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 103.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/3",
													"text" : "jcom.return button/3 @type msg_toggle @description \"Button 3.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 337.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 219.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[4]",
									"text" : "p one",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 588.0, 121.0, 36.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 427.0, 304.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 427.0, 304.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 182.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 161.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 82.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 19 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 53.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/1",
													"text" : "jcom.return button/1 @type msg_toggle @description \"Button 1.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 337.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 233.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[2]",
									"text" : "p play",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 685.0, 247.0, 39.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 461.0, 305.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 461.0, 305.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 189.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 168.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 94.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 26 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 63.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/play",
													"text" : "jcom.return button/play @type msg_toggle @description \"Button labeled Play.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 404.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 228.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[3]",
									"text" : "p five",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 685.0, 192.0, 36.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-34",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 350.0, 315.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 350.0, 315.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 189.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 168.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 90.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 23 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 60.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/5",
													"text" : "jcom.return button/5 @description \"Button 5.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 240.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 233.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"fontname" : "Verdana",
									"presentation_rect" : [ 432.0, 7.0, 103.0, 28.0 ],
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 119.0, 357.0, 103.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 634 362, window flags nogrow, window exec, savewindow 1",
									"linecount" : 6,
									"presentation_linecount" : 6,
									"fontname" : "Verdana",
									"presentation_rect" : [ 433.0, 41.0, 94.0, 76.0 ],
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 119.0, 389.0, 94.0, 76.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"id" : "obj-37",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p front",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 110.0, 337.0, 42.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "front" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t front",
													"fontname" : "Verdana",
													"hidden" : 1,
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 50.0, 92.0, 40.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "front" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 114.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-5",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[1]",
									"text" : "p two",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 685.0, 121.0, 36.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-39",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 499.0, 296.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 499.0, 296.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 189.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 168.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 96.0, 76.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 20 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 103.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/2",
													"text" : "jcom.return button/2 @type msg_toggle @description \"Button 2.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 337.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 226.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[10]",
									"text" : "p minus",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 588.0, 247.0, 48.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-42",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 364.0, 285.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 364.0, 285.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 189.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 168.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 102.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 25 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 78.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/minus",
													"text" : "jcom.return button/minus @description \"Button labels minus.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 319.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 221.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[9]",
									"text" : "p four",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 588.0, 192.0, 38.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-44",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 418.0, 294.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 418.0, 294.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 189.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 168.0, 46.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 86.0, 33.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 33.0, 72.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 22 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 69.0, 56.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/4",
													"text" : "jcom.return button/4 @type msg_toggle @description \"Button 4.\"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 46.0, 127.0, 337.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 46.0, 232.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 110.0, 468.0, 64.0, 18.0 ],
									"numoutlets" : 2,
									"id" : "obj-46",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 245, 146, 1343, 832, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 110.0, 319.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-47",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 24 24 24",
									"fontname" : "Verdana",
									"numinlets" : 4,
									"fontsize" : 9.873845,
									"patching_rect" : [ 110.0, 488.0, 93.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-48"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.uc-33[7]",
									"presentation_rect" : [ 378.0, 8.0, 51.0, 243.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 378.0, 8.0, 51.0, 243.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-49",
									"args" : [ "#0_", 8 ],
									"name" : "jalg.uc-33.maxpat",
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.uc-33[6]",
									"presentation_rect" : [ 325.0, 8.0, 51.0, 243.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 325.0, 8.0, 51.0, 243.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-50",
									"args" : [ "#0_", 7 ],
									"name" : "jalg.uc-33.maxpat",
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.uc-33[5]",
									"presentation_rect" : [ 272.0, 8.0, 51.0, 243.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 272.0, 8.0, 51.0, 243.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-51",
									"args" : [ "#0_", 6 ],
									"name" : "jalg.uc-33.maxpat",
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.uc-33[4]",
									"presentation_rect" : [ 219.0, 8.0, 51.0, 243.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 219.0, 8.0, 51.0, 243.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-52",
									"args" : [ "#0_", 5 ],
									"name" : "jalg.uc-33.maxpat",
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.uc-33[3]",
									"presentation_rect" : [ 166.0, 8.0, 51.0, 243.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 166.0, 8.0, 51.0, 243.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-53",
									"args" : [ "#0_", 4 ],
									"name" : "jalg.uc-33.maxpat",
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.uc-33[2]",
									"presentation_rect" : [ 113.0, 8.0, 51.0, 243.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 113.0, 8.0, 51.0, 243.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-54",
									"args" : [ "#0_", 3 ],
									"name" : "jalg.uc-33.maxpat",
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.uc-33[1]",
									"presentation_rect" : [ 60.0, 8.0, 51.0, 243.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 60.0, 8.0, 51.0, 243.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-55",
									"args" : [ "#0_", 2 ],
									"name" : "jalg.uc-33.maxpat",
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.uc-33",
									"presentation_rect" : [ 7.0, 8.0, 51.0, 243.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 7.0, 8.0, 51.0, 243.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-56",
									"args" : [ "#0_", 1 ],
									"name" : "jalg.uc-33.maxpat",
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 431.0, 155.0, 94.0, 96.0 ],
									"bgcolor" : [ 0.094118, 0.094118, 0.094118, 1.0 ],
									"numinlets" : 1,
									"border" : 1,
									"patching_rect" : [ 431.0, 155.0, 94.0, 96.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"rounded" : 0,
									"id" : "obj-57",
									"bordercolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [ 694.5, 321.0, 672.0, 321.0, 672.0, 282.0, 694.5, 282.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [ 597.5, 210.0, 585.0, 210.0, 585.0, 171.0, 597.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 694.5, 210.0, 672.0, 210.0, 672.0, 171.0, 694.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [ 791.5, 210.0, 768.0, 210.0, 768.0, 171.0, 791.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 597.5, 267.0, 585.0, 267.0, 585.0, 225.0, 597.5, 225.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [ 694.5, 267.0, 672.0, 267.0, 672.0, 225.0, 694.5, 225.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [ 791.5, 267.0, 768.0, 267.0, 768.0, 225.0, 791.5, 225.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [ 694.5, 141.0, 672.0, 141.0, 672.0, 99.0, 694.5, 99.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 791.5, 141.0, 768.0, 141.0, 768.0, 99.0, 791.5, 99.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [ 597.5, 141.0, 585.0, 141.0, 585.0, 99.0, 597.5, 99.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [ 752.5, 387.0, 729.0, 387.0, 729.0, 342.0, 752.5, 342.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [ 858.5, 387.0, 846.0, 387.0, 846.0, 342.0, 858.5, 342.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [ 128.5, 387.0, 119.5, 387.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 49.0, 87.0, 193.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 119.0, 188.0, 45.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 119.0, 236.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 119.0, 212.0, 93.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-11",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 203.0, 104.0, 31.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MIDI in:",
					"fontname" : "Verdana",
					"presentation_rect" : [ 0.0, 21.0, 65.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 5.0, 21.0, 65.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"A module interfacing with the Edirol UC-33 MIDI fader.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 129.0, 356.0, 30.0 ],
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 94.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 331.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "midi_in",
					"text" : "jcom.parameter midi_in @priority 0 @description \"Port to receive MIDI messages on.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 466.0, 122.0, 258.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-18",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 64.0, 104.0, 124.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"has_panel" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 475.5, 154.0, 453.0, 154.0, 453.0, 94.0, 475.5, 94.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 202.5, 231.0, 202.5, 231.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 202.5, 270.0, 128.5, 270.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 58.5, 125.0, 25.5, 125.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 73.5, 125.0, 25.5, 125.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 212.5, 125.0, 25.5, 125.0 ]
				}

			}
 ]
	}

}
