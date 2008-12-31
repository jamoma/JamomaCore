{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 342.0, 47.0, 1172.0, 693.0 ],
		"bglocked" : 0,
		"defrect" : [ 342.0, 47.0, 1172.0, 693.0 ],
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
					"maxclass" : "dropfile",
					"presentation_rect" : [ 1.0, 0.0, 149.0, 35.0 ],
					"bordercolor" : [ 0.035294, 0.035294, 0.741176, 0.596078 ],
					"types" : [ "fold", "AIFF", "WAVE", "Sd2f" ],
					"patching_rect" : [ 334.0, 44.0, 153.0, 61.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-38",
					"rounded" : 10.0,
					"border" : 1.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p fill_text",
					"fontsize" : 10.0,
					"patching_rect" : [ 605.0, 195.0, 50.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-34",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 10.0,
									"patching_rect" : [ 295.0, 220.0, 100.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-23",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print path",
									"fontsize" : 9.0,
									"patching_rect" : [ 52.0, 192.0, 49.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl ecils 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 90.0, 175.0, 47.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-24",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "strip everything after last /",
									"fontsize" : 9.0,
									"patching_rect" : [ 140.0, 150.0, 120.0, 17.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-22",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print JustDirectory",
									"fontsize" : 9.0,
									"patching_rect" : [ 118.0, 194.0, 86.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-26",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp (.*)(\\\\/.*)",
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 100.0, 98.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-29",
									"numoutlets" : 5,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "strip trailing slash",
									"fontsize" : 9.0,
									"patching_rect" : [ 149.0, 101.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-30",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl ecils 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 126.0, 47.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-31",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp (.*\\\\/)(.*$)",
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 148.0, 81.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-32",
									"numoutlets" : 5,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-27",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 295.0, 298.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 458.0, 129.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[2]",
					"text" : "jcom.parameter mainfolder @type msg_list @repetitions/allow 0 @description \"path of the parent folder dropped in, containing subfolders with sound files in \"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 152.0, 512.0, 561.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog folder",
					"fontsize" : 12.0,
					"patching_rect" : [ 20.0, 434.0, 111.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p coll_declaration",
					"fontsize" : 24.0,
					"patching_rect" : [ 544.0, 333.0, 225.0, 36.0 ],
					"numinlets" : 0,
					"id" : "obj-12",
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 0.031373, 0.031373, 1.0 ],
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 338.0, 114.0, 581.0, 226.0 ],
						"bglocked" : 0,
						"defrect" : [ 338.0, 114.0, 581.0, 226.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "je le vire si on me ferme",
									"fontsize" : 9.0,
									"patching_rect" : [ 360.0, 60.0, 157.0, 17.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.403922, 0.109804, 0.701961, 1.0 ],
									"id" : "obj-8",
									"textcolor" : [ 0.403922, 0.109804, 0.701961, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "je déclare mon coll à l'ouverture",
									"fontsize" : 9.0,
									"patching_rect" : [ 120.0, 30.0, 157.0, 17.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.403922, 0.109804, 0.701961, 1.0 ],
									"id" : "obj-7",
									"textcolor" : [ 0.403922, 0.109804, 0.701961, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"fontsize" : 9.0,
									"patching_rect" : [ 52.0, 109.0, 50.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-48",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontsize" : 9.0,
									"patching_rect" : [ 288.0, 84.0, 47.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "remove #1",
									"fontsize" : 9.0,
									"patching_rect" : [ 316.0, 104.0, 61.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-19",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "freebang",
									"fontsize" : 9.0,
									"patching_rect" : [ 290.0, 64.0, 62.0, 17.0 ],
									"numinlets" : 0,
									"id" : "obj-10",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s s",
									"fontsize" : 9.0,
									"patching_rect" : [ 121.0, 86.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack store s s",
									"fontsize" : 9.0,
									"patching_rect" : [ 121.0, 109.0, 100.0, 17.0 ],
									"numinlets" : 3,
									"id" : "obj-2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s refresh_buffpools",
									"fontsize" : 10.0,
									"patching_rect" : [ 102.0, 157.0, 95.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess #1",
									"fontsize" : 10.0,
									"patching_rect" : [ 121.0, 64.0, 67.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll buffpools 1",
									"fontsize" : 10.0,
									"patching_rect" : [ 121.0, 131.0, 100.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 130.5, 104.0, 111.5, 104.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 128.0, 130.5, 128.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 297.5, 152.0, 111.5, 152.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontsize" : 9.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation_rect" : [ 104.0, 4.0, 29.0, 12.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 19.17981, 409.546051, 75.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-19",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"text" : "open",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p more",
					"fontsize" : 12.0,
					"patching_rect" : [ 52.0, 370.0, 48.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 89.0, 222.0, 550.0, 128.0 ],
						"bglocked" : 0,
						"defrect" : [ 89.0, 222.0, 550.0, 128.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 2,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0requestpath",
									"fontsize" : 12.0,
									"patching_rect" : [ 250.0, 230.0, 97.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-38",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"fontsize" : 12.0,
									"patching_rect" : [ 265.0, 185.0, 228.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-37",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 12.0,
									"patching_rect" : [ 450.0, 235.0, 40.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-35",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0addedfilemov",
									"fontsize" : 12.0,
									"patching_rect" : [ 450.0, 260.0, 105.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-36",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 12.0,
									"patching_rect" : [ 350.0, 230.0, 40.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-12",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s",
									"fontsize" : 12.0,
									"patching_rect" : [ 490.0, 200.0, 23.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-13",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0addedfiledir",
									"fontsize" : 12.0,
									"patching_rect" : [ 350.0, 260.0, 95.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p folderlist",
									"fontsize" : 12.0,
									"patching_rect" : [ 440.0, 110.0, 65.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 22.0, 228.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 22.0, 228.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel AddedFiles",
													"fontsize" : 12.0,
													"patching_rect" : [ 64.0, 172.0, 94.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-1",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 123.0, 197.627747, 57.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-32",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_majname",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.046204, 100.0, 113.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-52",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s",
													"fontsize" : 12.0,
													"patching_rect" : [ 160.0, 220.627747, 23.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-26",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontsize" : 12.0,
													"patching_rect" : [ 160.0, 243.627747, 98.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-25",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump clear",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.0, 124.627747, 154.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-24",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "dump", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #1 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.0, 147.627747, 59.5, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-20",
													"numoutlets" : 4,
													"fontname" : "Arial",
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-36",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 184.0, 268.627747, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-37",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p filelist",
									"fontsize" : 12.0,
									"patching_rect" : [ 385.0, 140.0, 51.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 35.0, 146.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 35.0, 146.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontsize" : 12.0,
													"patching_rect" : [ 331.0, 97.0, 40.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-52",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"fontsize" : 12.0,
													"patching_rect" : [ 351.0, 72.0, 33.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-51",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r  #1maj",
													"fontsize" : 12.0,
													"patching_rect" : [ 295.0, 71.0, 54.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-22",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 12.0,
													"patching_rect" : [ 333.0, 220.0, 79.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-49",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontsize" : 12.0,
													"patching_rect" : [ 331.0, 248.0, 98.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-31",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s clear",
													"fontsize" : 12.0,
													"patching_rect" : [ 331.0, 127.0, 135.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-30",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 332.0, 197.0, 49.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-29",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"fontsize" : 12.0,
													"patching_rect" : [ 332.0, 150.0, 96.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-28",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #1 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 332.0, 174.0, 59.5, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-27",
													"numoutlets" : 4,
													"fontname" : "Arial",
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 351.0, 43.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-23",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 331.0, 280.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-33",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [ 304.5, 93.0, 340.5, 93.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 1 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [ 402.5, 242.0, 340.5, 242.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [ 456.5, 275.0, 340.5, 275.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-28", 0 ],
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
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-52", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 1 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [ 374.5, 120.0, 340.5, 120.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "dump",
									"fontsize" : 11.595187,
									"patching_rect" : [ 435.0, 85.0, 41.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-23",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 12.0,
									"patching_rect" : [ 115.0, 205.0, 40.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-52",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s",
									"fontsize" : 12.0,
									"patching_rect" : [ 135.0, 180.0, 23.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-51",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Dans addedfile, choisir le buffer a effacer et bang",
									"fontsize" : 12.0,
									"patching_rect" : [ 210.0, 290.0, 356.0, 20.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.933333, 0.101961, 0.101961, 1.0 ],
									"id" : "obj-50",
									"textcolor" : [ 0.933333, 0.101961, 0.101961, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0addedfiledel",
									"fontsize" : 12.0,
									"patching_rect" : [ 115.0, 230.0, 98.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-42",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p addedfilelist",
									"fontsize" : 12.0,
									"patching_rect" : [ 20.0, 85.0, 84.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-34",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "clear" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 369.0, 116.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 369.0, 116.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "symbol AddedFiles",
													"fontsize" : 12.0,
													"patching_rect" : [ 336.0, 184.0, 124.0, 18.0 ],
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r  #1maj",
													"fontsize" : 12.0,
													"patching_rect" : [ 337.0, 136.0, 54.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-22",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 12.0,
													"patching_rect" : [ 341.0, 250.0, 79.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-49",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontsize" : 12.0,
													"patching_rect" : [ 345.0, 283.0, 98.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-31",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 340.0, 227.0, 49.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-29",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b clear",
													"fontsize" : 12.0,
													"patching_rect" : [ 338.0, 160.0, 118.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-28",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #1 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 340.0, 204.0, 59.5, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-27",
													"numoutlets" : 4,
													"fontname" : "Arial",
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 347.0, 315.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-33",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 1 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [ 446.5, 309.0, 366.0, 309.0, 366.0, 306.0, 356.5, 306.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 1 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [ 410.5, 272.0, 354.5, 272.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pouvoir créer des sous-dossiers",
									"fontsize" : 12.0,
									"patching_rect" : [ 125.0, 435.0, 194.0, 20.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-18",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "dans un dossier déjà existant",
									"fontsize" : 12.0,
									"patching_rect" : [ 125.0, 410.0, 194.0, 20.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-4",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-> pouvoir utiliser les menus dans d'autres modules",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 555.0, 194.0, 34.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-17",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "stocker dans les colls",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 525.0, 194.0, 20.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-16",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "path en parameter",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 495.0, 194.0, 20.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-14",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "effacement de buffers (addedFiles)",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 465.0, 194.0, 20.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-11",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sauvegarde de buffer (addedFiles)",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 385.0, 194.0, 20.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "à rajouter :",
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 350.0, 68.0, 20.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-9",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "quand on sauve sur disque un buffer~ -> il l'efface de la liste des addedFiles et crée le buffer~correspondant (dans l'endroit où on a tous les buffers du folder principal)",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 210.0, 315.0, 356.0, 48.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-5",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 345.0, 0.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation_rect" : [ 275.0, 50.0, 88.0, 21.0 ],
									"fontsize" : 12.0,
									"bgovercolor" : [ 0.352941, 0.533333, 0.956863, 1.0 ],
									"patching_rect" : [ 265.0, 160.0, 88.0, 21.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-33",
									"numoutlets" : 3,
									"bgcolor" : [ 0.219608, 0.47451, 0.784314, 1.0 ],
									"fontname" : "Arial",
									"text" : "Move to ->",
									"outlettype" : [ "", "", "int" ],
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation_rect" : [ 20.0, 50.0, 88.0, 21.0 ],
									"fontsize" : 12.0,
									"bgovercolor" : [ 0.956863, 0.352941, 0.352941, 1.0 ],
									"patching_rect" : [ 10.0, 155.0, 88.0, 21.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-32",
									"numoutlets" : 3,
									"bgcolor" : [ 1.0, 0.321569, 0.321569, 1.0 ],
									"fontname" : "Arial",
									"text" : "Delete buffer~",
									"outlettype" : [ "", "", "int" ],
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Addedfile",
									"presentation_rect" : [ 120.0, 25.0, 150.0, 20.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 105.0, 135.0, 150.0, 20.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"presentation" : 1,
									"id" : "obj-29",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"presentation_rect" : [ 370.0, 75.0, 156.0, 20.0 ],
									"items" : [  ],
									"fontsize" : 12.0,
									"types" : [  ],
									"patching_rect" : [ 440.0, 165.0, 153.0, 20.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-24",
									"autopopulate" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"prefix_mode" : 2,
									"outlettype" : [ "int", "", "" ],
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"presentation_rect" : [ 370.0, 50.0, 156.0, 20.0 ],
									"items" : [  ],
									"fontsize" : 12.0,
									"types" : [  ],
									"patching_rect" : [ 440.0, 140.0, 153.0, 20.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-25",
									"autopopulate" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"prefix_mode" : 2,
									"outlettype" : [ "int", "", "" ],
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"presentation_rect" : [ 115.0, 50.0, 156.0, 20.0 ],
									"items" : [  ],
									"fontsize" : 12.0,
									"types" : [  ],
									"patching_rect" : [ 105.0, 160.0, 153.0, 20.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-21",
									"autopopulate" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"prefix_mode" : 2,
									"outlettype" : [ "int", "", "" ],
									"background" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 2 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [ 144.5, 201.0, 207.0, 201.0, 207.0, 212.0, 480.5, 212.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 516.5, 135.0, 393.0, 135.0, 393.0, 135.0, 394.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 394.5, 162.0, 449.5, 162.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 152.0, 114.5, 152.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-52", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 12.0,
					"patching_rect" : [ 52.0, 346.0, 53.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.panelopen",
					"fontsize" : 12.0,
					"patching_rect" : [ 52.0, 320.0, 95.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0",
					"fontsize" : 12.0,
					"patching_rect" : [ 185.0, 400.0, 24.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p addfile",
					"fontsize" : 12.0,
					"patching_rect" : [ 312.0, 453.0, 62.0, 20.0 ],
					"numinlets" : 2,
					"id" : "obj-5",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 102.0, 87.0, 1174.0, 640.0 ],
						"bglocked" : 0,
						"defrect" : [ 102.0, 87.0, 1174.0, 640.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s refresh_buffpools",
									"fontsize" : 9.0,
									"patching_rect" : [ 156.0, 620.0, 99.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0addedfilecopy",
									"fontsize" : 12.0,
									"patching_rect" : [ 525.0, 483.0, 105.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-69",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0requestpath",
									"fontsize" : 12.0,
									"patching_rect" : [ 458.0, 347.0, 95.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-13",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 12.0,
									"patching_rect" : [ 542.0, 375.0, 40.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-67",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0addedfiledel",
									"fontsize" : 12.0,
									"patching_rect" : [ 402.0, 485.0, 98.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-42",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s s",
									"fontsize" : 12.0,
									"patching_rect" : [ 402.0, 431.0, 264.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-66",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 12.0,
									"patching_rect" : [ 402.0, 462.0, 40.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-64",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s s s",
									"fontsize" : 12.0,
									"patching_rect" : [ 753.0, 376.0, 128.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-63",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontsize" : 12.0,
									"patching_rect" : [ 646.5, 457.5, 59.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-60",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r  #0addedfiledir",
									"fontsize" : 12.0,
									"patching_rect" : [ 647.0, 377.0, 97.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-56",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0addedfilemov",
									"fontsize" : 12.0,
									"patching_rect" : [ 753.0, 353.0, 103.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-57",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s%s/%s",
									"fontsize" : 12.0,
									"patching_rect" : [ 543.0, 403.0, 227.0, 20.0 ],
									"numinlets" : 3,
									"id" : "obj-59",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend write",
									"fontsize" : 12.0,
									"patching_rect" : [ 646.5, 479.5, 83.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-46",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 562.0, 343.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-35",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p deletebuffer",
									"fontsize" : 12.0,
									"patching_rect" : [ 236.0, 455.0, 84.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-33",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 629.0, 116.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 629.0, 116.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 370.0, 446.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-1",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b clear",
													"fontsize" : 12.0,
													"patching_rect" : [ 289.0, 277.0, 53.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-36",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 300.5, 254.0, 36.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-34",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl compare",
													"fontsize" : 12.0,
													"patching_rect" : [ 301.0, 230.0, 69.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-32",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 12.0,
													"patching_rect" : [ 178.046204, 204.372253, 79.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-35",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 12.0,
													"patching_rect" : [ 262.046204, 313.372253, 79.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-29",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0maj",
													"fontsize" : 12.0,
													"patching_rect" : [ 180.0, 313.0, 53.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-22",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t AddedFiles s",
													"fontsize" : 12.0,
													"patching_rect" : [ 180.0, 290.0, 101.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-21",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "AddedFiles", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store AddedFiles",
													"fontsize" : 12.0,
													"patching_rect" : [ 263.046204, 340.372253, 155.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-19",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0addedfilenamelist",
													"fontsize" : 12.0,
													"patching_rect" : [ 263.046204, 363.372253, 139.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-20",
													"numoutlets" : 4,
													"fontname" : "Arial",
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s dump s",
													"fontsize" : 12.0,
													"patching_rect" : [ 52.0, 147.0, 183.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-13",
													"numoutlets" : 3,
													"fontname" : "Arial",
													"outlettype" : [ "", "dump", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"fontsize" : 12.0,
													"patching_rect" : [ 52.0, 124.0, 59.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-41",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script delete",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.0, 182.0, 123.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-39",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl filter",
													"fontsize" : 12.0,
													"patching_rect" : [ 180.0, 267.0, 59.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-8",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0addedfilenamelist",
													"fontsize" : 12.0,
													"patching_rect" : [ 178.046204, 178.372253, 139.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 4,
													"fontname" : "Arial",
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_addbuftp",
													"fontsize" : 12.0,
													"patching_rect" : [ 54.0, 204.0, 111.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0addedfiledel",
													"fontsize" : 12.0,
													"patching_rect" : [ 52.0, 100.0, 96.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-42",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 294.0, 443.372253, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-31",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 143.5, 172.0, 187.546204, 172.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 1 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [ 331.546204, 338.0, 272.546204, 338.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\n#0_xxx_addbuftp script connect inlet 0 $1 0; ",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 809.046143, 409.372253, 251.0, 32.0 ],
									"numinlets" : 2,
									"id" : "obj-44",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend delete AddedFiles",
									"fontsize" : 12.0,
									"patching_rect" : [ 260.0, 550.0, 157.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-43",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"fontsize" : 12.0,
									"patching_rect" : [ 133.046204, 224.372253, 79.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-40",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl union",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.0, 249.0, 57.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-38",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s dump zlclear",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.046204, 175.372253, 94.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-37",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "", "dump", "zlclear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #0addedfilenamelist",
									"fontsize" : 12.0,
									"patching_rect" : [ 133.046204, 199.372253, 139.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.046204, 146.372253, 79.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1maj",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.0, 597.0, 53.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-27",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b s",
									"fontsize" : 12.0,
									"patching_rect" : [ 94.0, 574.0, 129.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.046204, 524.372253, 79.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend store AddedFiles",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.046204, 549.372253, 147.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #0addedfilenamelist",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.046204, 499.372253, 139.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #1 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 205.046204, 597.372253, 164.5, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0maj",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.0, 473.0, 51.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-4",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"fontsize" : 12.0,
									"patching_rect" : [ 51.046173, 275.372253, 37.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-26",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0maj",
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 222.0, 53.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-24",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t AddedFiles s",
									"fontsize" : 12.0,
									"patching_rect" : [ 14.0, 123.0, 100.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "AddedFiles", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend store AddedFiles",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.046204, 273.372253, 152.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-23",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #0addedfilenamelist",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.046204, 299.372253, 139.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "bufs",
									"text" : "p bufs",
									"fontsize" : 64.0,
									"patching_rect" : [ 646.71521, 505.285858, 234.0, 80.0 ],
									"numinlets" : 1,
									"id" : "obj-95",
									"numoutlets" : 0,
									"bgcolor" : [ 0.6, 0.301961, 0.301961, 1.0 ],
									"fontname" : "Arial",
									"color" : [ 1.0, 0.0, 0.0, 0.8 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 558.0, 435.0, 692.0, 339.0 ],
										"bglocked" : 0,
										"defrect" : [ 558.0, 435.0, 692.0, 339.0 ],
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
													"varname" : "inlet",
													"patching_rect" : [ 773.0, 17.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 12.0,
													"patching_rect" : [ 929.0, 200.0, 24.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-21",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_addbuftp",
													"fontsize" : 12.0,
													"patching_rect" : [ 797.0, 277.0, 111.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-20",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script delete",
													"fontsize" : 12.0,
													"patching_rect" : [ 797.0, 255.0, 123.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-19",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontsize" : 12.0,
													"patching_rect" : [ 897.0, 199.0, 24.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-13",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 848.0, 199.0, 24.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-12",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"fontsize" : 12.0,
													"patching_rect" : [ 797.0, 233.0, 34.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-9",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel buffer~",
													"fontsize" : 12.0,
													"patching_rect" : [ 848.0, 175.0, 68.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route clearbuff",
													"fontsize" : 12.0,
													"patching_rect" : [ 777.0, 101.0, 195.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_addendlocalbuff",
													"fontsize" : 12.0,
													"patching_rect" : [ 931.0, 320.0, 149.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 12.0,
													"patching_rect" : [ 931.0, 296.0, 22.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t stop",
													"fontsize" : 12.0,
													"patching_rect" : [ 957.0, 200.0, 41.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "stop" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 931.0, 269.0, 34.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-6",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">= 500",
													"fontsize" : 12.0,
													"patching_rect" : [ 931.0, 247.0, 46.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-7",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "clocker 50",
													"fontsize" : 12.0,
													"patching_rect" : [ 930.0, 226.0, 66.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-10",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 12.0,
													"patching_rect" : [ 777.0, 124.0, 24.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-11",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "js patchdescribe.js",
													"fontsize" : 12.0,
													"patching_rect" : [ 777.0, 147.0, 160.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-16",
													"numoutlets" : 5,
													"fontname" : "Arial",
													"outlettype" : [ "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_addbuftp",
													"fontsize" : 12.0,
													"patching_rect" : [ 777.0, 77.0, 109.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-17",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "thispatcher",
													"fontsize" : 12.0,
													"patching_rect" : [ 953.0, 151.0, 76.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-18",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ],
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 966.5, 222.0, 939.5, 222.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 940.5, 290.0, 1008.0, 290.0, 1008.0, 190.0, 966.5, 190.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 962.5, 135.0, 962.5, 135.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 2 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
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
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 857.5, 225.0, 806.5, 225.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 906.5, 225.0, 806.5, 225.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 3 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [ 892.25, 169.0, 927.0, 169.0, 927.0, 184.0, 938.5, 184.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s s",
									"fontsize" : 12.0,
									"patching_rect" : [ 244.986481, 44.204865, 259.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xxx_rstcnt",
									"fontsize" : 12.0,
									"patching_rect" : [ 367.667542, 97.890625, 92.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-18",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 367.131775, 121.19458, 22.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 16",
									"fontsize" : 12.0,
									"patching_rect" : [ 340.046204, 217.372253, 33.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-12",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.qball",
									"fontsize" : 12.0,
									"patching_rect" : [ 273.046173, 219.372253, 54.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-47",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.qball",
									"fontsize" : 12.0,
									"patching_rect" : [ 273.046173, 262.372253, 54.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-48",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack s 2 3 600 s",
									"fontsize" : 12.0,
									"patching_rect" : [ 273.046173, 240.372253, 231.097275, 20.0 ],
									"numinlets" : 5,
									"id" : "obj-53",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\r\n#0_xxx_addbuftp script new $1 newex $3 $2 $4 9 buffer~ $1 $5",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 273.046173, 285.372253, 348.0, 32.0 ],
									"numinlets" : 2,
									"id" : "obj-54",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s s b",
									"fontsize" : 12.0,
									"patching_rect" : [ 246.046173, 94.309784, 72.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-58",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter",
									"fontsize" : 12.0,
									"patching_rect" : [ 339.551208, 143.272278, 73.0, 20.0 ],
									"numinlets" : 5,
									"id" : "obj-65",
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "int", "", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "strippath",
									"fontsize" : 12.0,
									"patching_rect" : [ 245.0, 67.0, 57.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 245.0, 14.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-37", 0 ],
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
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 164.546204, 170.0, 104.546204, 170.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 2 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 255.546173, 116.0, 153.0, 116.0, 153.0, 110.0, 23.5, 110.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 1 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 2 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [ 467.5, 378.0, 537.0, 378.0, 537.0, 372.0, 551.5, 372.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-67", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 2 ],
									"destination" : [ "obj-64", 1 ],
									"hidden" : 0,
									"midpoints" : [ 871.5, 399.0, 1064.0, 399.0, 1064.0, 458.0, 432.5, 458.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 1 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-59", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-59", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [ 202.546204, 245.0, 142.5, 245.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-40", 0 ],
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
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 1 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 2 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 308.546173, 140.0, 349.051208, 140.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-65", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-53", 4 ],
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
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-53", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p algobuffers",
					"fontsize" : 12.0,
					"patching_rect" : [ 386.0, 454.0, 80.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 152.0, 104.0, 1080.0, 606.0 ],
						"bglocked" : 0,
						"defrect" : [ 152.0, 104.0, 1080.0, 606.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontsize" : 12.0,
									"patching_rect" : [ 290.0, 58.0, 91.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print sbuferpol",
									"fontsize" : 12.0,
									"patching_rect" : [ 342.0, 138.0, 91.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s refresh_buffpools",
									"fontsize" : 9.0,
									"patching_rect" : [ 814.0, 532.0, 99.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r  #0addedfiledir",
									"fontsize" : 12.0,
									"patching_rect" : [ 206.0, 426.0, 97.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-73",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r  #0addedfilecopy",
									"fontsize" : 12.0,
									"patching_rect" : [ 94.0, 426.0, 111.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-70",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p generationfile",
									"fontsize" : 12.0,
									"patching_rect" : [ 91.046173, 447.658997, 133.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-69",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 204.0, 81.0, 991.0, 602.0 ],
										"bglocked" : 0,
										"defrect" : [ 204.0, 81.0, 991.0, 602.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "strippath",
													"fontsize" : 12.0,
													"patching_rect" : [ 318.0, 150.0, 58.5, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "strippath",
													"fontsize" : 12.0,
													"patching_rect" : [ 56.0, 146.0, 58.5, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontsize" : 12.0,
													"patching_rect" : [ 434.0, 150.0, 40.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-4",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 156.0, 194.0, 32.5, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "v #0bufindex",
													"fontsize" : 12.0,
													"patching_rect" : [ 156.0, 172.0, 79.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-56",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_foldname",
													"fontsize" : 12.0,
													"patching_rect" : [ 433.0, 176.713257, 114.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-19",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_filename",
													"fontsize" : 12.0,
													"patching_rect" : [ 318.0, 174.0, 110.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s b s s b",
													"fontsize" : 12.0,
													"patching_rect" : [ 55.940308, 122.545868, 368.5, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-15",
													"numoutlets" : 5,
													"fontname" : "Arial",
													"outlettype" : [ "", "bang", "", "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"fontsize" : 12.0,
													"patching_rect" : [ 54.0, 90.0, 59.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-14",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 16",
													"fontsize" : 12.0,
													"patching_rect" : [ 123.0, 239.713257, 33.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-12",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.qball",
													"fontsize" : 12.0,
													"patching_rect" : [ 56.0, 216.713257, 54.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-47",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.qball",
													"fontsize" : 12.0,
													"patching_rect" : [ 56.0, 309.0, 54.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-48",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s 2 3 600 s",
													"fontsize" : 12.0,
													"patching_rect" : [ 56.0, 283.713257, 231.097275, 20.0 ],
													"numinlets" : 5,
													"id" : "obj-53",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : ";\r\n#0_xxx_buftp script new $1 newex $3 $2 $4 9 buffer~ $1 $5",
													"linecount" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 56.0, 330.0, 328.0, 32.0 ],
													"numinlets" : 2,
													"id" : "obj-54",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s b",
													"fontsize" : 12.0,
													"patching_rect" : [ 56.0, 168.650787, 85.536041, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-58",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter",
													"fontsize" : 12.0,
													"patching_rect" : [ 124.0, 218.0, 83.0, 20.0 ],
													"numinlets" : 5,
													"id" : "obj-65",
													"numoutlets" : 4,
													"fontname" : "Arial",
													"outlettype" : [ "int", "", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 52.0, 60.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-63",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 456.0, 110.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-67",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 4 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 3 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 2 ],
													"destination" : [ "obj-53", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-15", 0 ],
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
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-58", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-65", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-53", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 1 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p generationlist",
									"fontsize" : 12.0,
									"patching_rect" : [ 95.046173, 391.658997, 217.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-68",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 67.0, 866.0, 577.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 67.0, 866.0, 577.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "v #0bufindex",
													"fontsize" : 12.0,
													"patching_rect" : [ 139.0, 294.713257, 79.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-56",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"fontsize" : 12.0,
													"patching_rect" : [ 610.987183, 154.0, 41.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-20",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_foldname",
													"fontsize" : 12.0,
													"patching_rect" : [ 633.0, 216.713257, 114.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-19",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "strippath",
													"fontsize" : 12.0,
													"patching_rect" : [ 632.987183, 192.0, 57.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_filename",
													"fontsize" : 12.0,
													"patching_rect" : [ 405.000031, 144.713257, 110.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_rstcnt",
													"fontsize" : 12.0,
													"patching_rect" : [ 141.621399, 227.231628, 92.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-18",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s b s s",
													"fontsize" : 12.0,
													"patching_rect" : [ 55.940308, 122.545868, 368.5, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-15",
													"numoutlets" : 4,
													"fontname" : "Arial",
													"outlettype" : [ "", "bang", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"fontsize" : 12.0,
													"patching_rect" : [ 55.885712, 100.0, 59.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-14",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "Servo:/Users/pascalbaltazar/Music/froissements/SonsFroissements/découp-voix",
													"fontsize" : 12.0,
													"patching_rect" : [ 169.530457, 179.034973, 459.979034, 18.0 ],
													"numinlets" : 2,
													"id" : "obj-13",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf symout %s/%s",
													"fontsize" : 12.0,
													"patching_rect" : [ 170.322388, 202.773987, 125.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-9",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"fontsize" : 12.0,
													"patching_rect" : [ 610.987183, 125.0, 59.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 141.085602, 248.535583, 22.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-11",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 16",
													"fontsize" : 12.0,
													"patching_rect" : [ 117.0, 315.713257, 33.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-12",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 50",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.0, 401.713257, 54.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-34",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.qball",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.0, 292.713257, 54.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-47",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.qball",
													"fontsize" : 12.0,
													"patching_rect" : [ 107.0, 404.713257, 54.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-48",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_nxtsnd",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.0, 460.713257, 100.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-49",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.0, 380.713257, 76.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-50",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s 2 3 600 s",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.0, 359.713257, 231.097275, 20.0 ],
													"numinlets" : 5,
													"id" : "obj-53",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : ";\r\n#0_xxx_buftp script new $1 newex $3 $2 $4 9 buffer~ $1 $5",
													"linecount" : 2,
													"fontsize" : 12.0,
													"patching_rect" : [ 107.0, 425.713257, 328.0, 32.0 ],
													"numinlets" : 2,
													"id" : "obj-54",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s b",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.0, 244.650787, 85.536041, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-58",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter",
													"fontsize" : 12.0,
													"patching_rect" : [ 116.505035, 268.613281, 83.0, 20.0 ],
													"numinlets" : 5,
													"id" : "obj-65",
													"numoutlets" : 4,
													"fontname" : "Arial",
													"outlettype" : [ "int", "", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 59.953827, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-63",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 615.953857, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-67",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-20", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 1 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-65", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 1 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-53", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-53", 4 ],
													"hidden" : 0,
													"midpoints" : [ 179.822388, 223.341003, 244.953827, 223.341003, 244.953827, 346.341003, 271.59729, 346.341003 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 2 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [ 298.440308, 151.341003, 295.953827, 151.341003, 295.953827, 168.341003, 285.822388, 168.341003 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 0,
													"midpoints" : [ 65.440308, 142.341003, 58.953827, 142.341003, 58.953827, 184.341003, 59.5, 184.341003 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 181.940308, 142.341003, 179.030457, 142.341003 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 3 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p calculindex",
									"fontsize" : 12.0,
									"patching_rect" : [ 641.590698, 300.196411, 80.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-61",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 67.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 67.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.qball",
													"fontsize" : 12.0,
													"patching_rect" : [ 152.15387, 348.000061, 54.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-35",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 152.15387, 303.000061, 25.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-38",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontsize" : 12.0,
													"patching_rect" : [ 123.15387, 303.000061, 25.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-39",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_buffini",
													"fontsize" : 12.0,
													"patching_rect" : [ 123.15387, 283.000061, 94.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-40",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"fontsize" : 12.0,
													"patching_rect" : [ 152.15387, 328.000061, 64.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-41",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_rstctbf",
													"fontsize" : 12.0,
													"patching_rect" : [ 151.15387, 100.0, 95.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-45",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel",
													"fontsize" : 12.0,
													"patching_rect" : [ 232.15387, 232.000015, 75.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-46",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_buffini",
													"fontsize" : 12.0,
													"patching_rect" : [ 232.15387, 253.000046, 96.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-67",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel",
													"fontsize" : 12.0,
													"patching_rect" : [ 71.153931, 209.000015, 96.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-68",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_insnd",
													"fontsize" : 12.0,
													"patching_rect" : [ 118.15387, 233.000015, 93.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-69",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_nxtsnd",
													"fontsize" : 12.0,
													"patching_rect" : [ 59.153931, 125.0, 98.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-70",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_infold",
													"fontsize" : 12.0,
													"patching_rect" : [ 328.153931, 253.000046, 93.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-73",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_nxtfld",
													"fontsize" : 12.0,
													"patching_rect" : [ 50.0, 247.590652, 93.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-74",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_nxtfld",
													"fontsize" : 12.0,
													"patching_rect" : [ 160.15387, 124.0, 91.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-75",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter 0 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 71.153931, 189.000015, 80.0, 20.0 ],
													"numinlets" : 5,
													"id" : "obj-76",
													"numoutlets" : 4,
													"fontname" : "Arial",
													"outlettype" : [ "int", "", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i b i",
													"fontsize" : 12.0,
													"patching_rect" : [ 71.153931, 166.000015, 99.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-77",
													"numoutlets" : 3,
													"fontname" : "Arial",
													"outlettype" : [ "int", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter 0 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 172.15387, 191.000015, 86.0, 20.0 ],
													"numinlets" : 5,
													"id" : "obj-78",
													"numoutlets" : 4,
													"fontname" : "Arial",
													"outlettype" : [ "int", "", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i b i",
													"fontsize" : 12.0,
													"patching_rect" : [ 172.15387, 164.000015, 149.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-79",
													"numoutlets" : 3,
													"fontname" : "Arial",
													"outlettype" : [ "int", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t count i",
													"fontsize" : 12.0,
													"patching_rect" : [ 172.15387, 213.000015, 90.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-80",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "count", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_insnd",
													"fontsize" : 12.0,
													"patching_rect" : [ 152.15387, 367.000061, 93.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-81",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_nfold",
													"fontsize" : 12.0,
													"patching_rect" : [ 171.15387, 144.000015, 89.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-82",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_nsnd",
													"fontsize" : 12.0,
													"patching_rect" : [ 71.153931, 146.000015, 89.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-83",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-77", 1 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-76", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-77", 0 ],
													"destination" : [ "obj-76", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-77", 2 ],
													"destination" : [ "obj-68", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [ 132.65387, 324.0, 161.65387, 324.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 1 ],
													"destination" : [ "obj-78", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-78", 0 ],
													"destination" : [ "obj-80", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 0 ],
													"destination" : [ "obj-41", 1 ],
													"hidden" : 0,
													"midpoints" : [ 181.65387, 262.0, 206.65387, 262.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 0 ],
													"destination" : [ "obj-78", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 1 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 2 ],
													"destination" : [ "obj-46", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-78", 2 ],
													"hidden" : 0,
													"midpoints" : [ 160.65387, 120.000015, 215.15387, 120.000015 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-76", 2 ],
													"hidden" : 0,
													"midpoints" : [ 160.65387, 120.000015, 111.153931, 120.000015 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-75", 0 ],
													"destination" : [ "obj-78", 0 ],
													"hidden" : 0,
													"midpoints" : [ 169.65387, 187.000015, 181.65387, 187.000015 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-82", 0 ],
													"destination" : [ "obj-79", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [ 68.653931, 185.000015, 80.653931, 185.000015 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-83", 0 ],
													"destination" : [ "obj-77", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 0 ],
													"destination" : [ "obj-74", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 1 ],
													"destination" : [ "obj-69", 0 ],
													"hidden" : 0,
													"midpoints" : [ 157.653931, 229.000015, 127.65387, 229.000015 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 1 ],
													"destination" : [ "obj-73", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-81", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0maj",
									"fontsize" : 12.0,
									"patching_rect" : [ 692.046265, 532.372253, 53.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b AddedFiles b",
									"fontsize" : 12.0,
									"patching_rect" : [ 566.0, 506.0, 266.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "AddedFiles", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"fontsize" : 12.0,
									"patching_rect" : [ 349.744629, 497.196472, 37.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-28",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xxx_buffini",
									"fontsize" : 12.0,
									"patching_rect" : [ 566.744629, 482.196472, 94.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-57",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_majname",
									"fontsize" : 12.0,
									"patching_rect" : [ 568.046265, 529.372253, 114.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-52",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s  #0_xxx_rstname",
									"fontsize" : 12.0,
									"patching_rect" : [ 613.046204, 128.372253, 111.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-37",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xxx_rstname",
									"fontsize" : 12.0,
									"patching_rect" : [ 438.046265, 493.372253, 106.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-36",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend",
									"fontsize" : 12.0,
									"patching_rect" : [ 429.046265, 460.372253, 55.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-24",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set merge",
									"fontsize" : 12.0,
									"patching_rect" : [ 484.046265, 431.372253, 111.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-23",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xxx_foldname",
									"fontsize" : 12.0,
									"patching_rect" : [ 484.046265, 407.372253, 112.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-22",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r  #0_xxx_filename",
									"fontsize" : 12.0,
									"patching_rect" : [ 365.046265, 426.372253, 111.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-21",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #1 1",
									"fontsize" : 12.0,
									"patching_rect" : [ 385.0, 529.0, 162.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 292.0, 25.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_rstcnt",
									"fontsize" : 12.0,
									"patching_rect" : [ 962.512207, 104.353348, 94.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\r\n#0_xxx_buftp clearbuff bang",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 163.145554, 135.999786, 161.0, 32.0 ],
									"numinlets" : 2,
									"id" : "obj-1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xxx_endlocalbuff",
									"fontsize" : 12.0,
									"patching_rect" : [ 823.972717, 20.081207, 127.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-2",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s s clear",
									"fontsize" : 12.0,
									"patching_rect" : [ 163.145554, 102.999794, 469.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "", "", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xxx_infold",
									"fontsize" : 12.0,
									"patching_rect" : [ 27.82016, 66.453949, 91.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-30",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 164.82016, 29.453957, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-31",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend prefix",
									"fontsize" : 12.0,
									"patching_rect" : [ 163.82016, 80.453949, 97.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-32",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog folder",
									"fontsize" : 12.0,
									"patching_rect" : [ 163.82016, 50.453957, 111.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-33",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_nxtfld",
									"fontsize" : 12.0,
									"patching_rect" : [ 139.0, 354.666656, 93.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-42",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"fontsize" : 12.0,
									"patching_rect" : [ 138.0, 310.666656, 68.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-43",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 12.0,
									"patching_rect" : [ 840.0, 75.0, 74.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-44",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_infold",
									"fontsize" : 12.0,
									"patching_rect" : [ 828.220459, 104.353348, 93.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-62",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_rstctbf",
									"fontsize" : 12.0,
									"patching_rect" : [ 890.683655, 128.353333, 97.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-64",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xxx_buffini",
									"fontsize" : 12.0,
									"patching_rect" : [ 637.744629, 327.196472, 94.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-66",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ready",
									"fontsize" : 12.0,
									"patching_rect" : [ 638.744629, 350.196472, 63.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-71",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print buffs",
									"fontsize" : 12.0,
									"patching_rect" : [ 638.744629, 370.196472, 70.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-72",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xxx_insnd",
									"fontsize" : 12.0,
									"patching_rect" : [ 56.680809, 234.492966, 91.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-84",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_nfold",
									"fontsize" : 12.0,
									"patching_rect" : [ 343.223053, 230.155396, 91.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-86",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_nsnd",
									"fontsize" : 12.0,
									"patching_rect" : [ 187.0, 332.666656, 91.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-87",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route count",
									"fontsize" : 12.0,
									"patching_rect" : [ 343.223053, 207.155396, 72.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-88",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route count",
									"fontsize" : 12.0,
									"patching_rect" : [ 138.872635, 288.054352, 72.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-89",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"items" : [ "P-(eu)_souffle_retour01  .aif", ",", "P-blip_click01.aif", ",", "P-bouche_blip01.aif", ",", "P-bouche_blip02.aif", ",", "P-bouche_blip03.aif", ",", "P-bouche_blip04.aif", ",", "P-bouche_blip05.aif", ",", "P-bouche_blip06.aif", ",", "P-bouche_blip07.aif", ",", "P-bouche_flip01.aif", ",", "P-seq_orge_gloc01.aif", ",", "P-seq_orge_gloc02.aif", ",", "Q-souff_acharnement.aif", ",", "S-(eu)_attaque01.aif", ",", "S-(eu)_trainé_péripétie01.aif", ",", "S-(fle)motif_boucle01.aif", ",", "S-(fle-â)_timbré.aif", ",", "S-(le)_siffl_fin.aif", ",", "S-(si)_intensif01.aif", ",", "S-(si)_siffle_parasite01.aif", ",", "S-(si)_sifflement01.aif", ",", "S-ample_long01.aif", ",", "S-aspiration(ô).aif", ",", "S-aspiration01.aif", ",", "S-aspiration02.aif", ",", "S-aspiration03.aif", ",", "S-aspiration_inversée01.aif", ",", "S-descente_apnée01.aif", ",", "S-doux_long01.aif", ",", "S-gorge_(i)01.aif", ",", "S-gorge_raclé_(i)01.aif", ",", "S-gorge_raclé_(i)02.aif", ",", "S-issement02.aif", ",", "S-issement_bruisssement01.aif", ",", "S-long_(i)_(u-i)01.aif", ",", "S-mot_sillon01.aif", ",", "S-mot_sillon02.aif", ",", "S-mot_sillon03.aif", ",", "S-mot_sillon04.aif", ",", "S-ô_attaque(ô)01.aif", ",", "S-ô_caverneux_siffle01.aif", ",", "S-profond_(an)01.aif", ",", "S-raclé_doux02.aif", ",", "S-raclé_doux_trainé01.aif", ",", "S-raclé_péripétie01.aif", ",", "S-ressac_long_buté01.aif", ",", "S-ressac_mer01.aif", ",", "S-ressac_transition01.aif", ",", "S-résonance(fle)01.aif", ",", "S-résonance01.aif", ",", "S-résonance02.aif", ",", "S-résonance03.aif", ",", "S-résonance_raclé01.aif", ",", "S-résonnance_(i)_attaque01.aif", ",", "S-sifflement_vent01.aif", ",", "S-tenu_longue01.aif", ",", "T-(bre)infra_voix01.aif", ",", "V-(bre)_boucle01.aif", ",", "V-(bre)_boucle02.aif", ",", "V-(bre)_boucle_scansion01.aif", ",", "V-(bre)_siffle_racle_fin01.aif", ",", "V-(bre)_siffle_racle_fin02.aif", ",", "V-(fre)_boucle01.aif", ",", "V-issement01.aif" ],
									"fontsize" : 12.0,
									"prefix" : "Servo:/Users/pascalbaltazar/Music/froissements/SonsFroissements/découp-voix/",
									"types" : [ "AIFF", "WAVE", "Sd2f" ],
									"patching_rect" : [ 56.9916, 261.37207, 100.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-91",
									"autopopulate" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"prefix_mode" : 2,
									"outlettype" : [ "int", "", "" ],
									"pattrmode" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend prefix",
									"fontsize" : 12.0,
									"patching_rect" : [ 151.036392, 232.481247, 96.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-92",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"items" : "découp-voix",
									"fontsize" : 12.0,
									"prefix" : "Servo:/Users/pascalbaltazar/Music/froissements/SonsFroissements/",
									"types" : "fold",
									"patching_rect" : [ 110.063675, 180.31749, 100.0, 20.0 ],
									"depth" : 10,
									"numinlets" : 1,
									"id" : "obj-93",
									"autopopulate" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "int", "", "" ],
									"pattrmode" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t count 0 b",
									"fontsize" : 12.0,
									"patching_rect" : [ 825.0, 45.0, 149.18335, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-94",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "count", "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "bufs",
									"text" : "p bufs",
									"fontsize" : 64.0,
									"patching_rect" : [ 466.0, 178.0, 208.0, 80.0 ],
									"numinlets" : 0,
									"id" : "obj-95",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"color" : [ 0.470588, 0.266667, 0.266667, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 12.0, 217.0, 1087.0, 540.0 ],
										"bglocked" : 0,
										"defrect" : [ 12.0, 217.0, 1087.0, 540.0 ],
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
													"maxclass" : "button",
													"patching_rect" : [ 750.0, 90.0, 20.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-58",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 12.0,
													"patching_rect" : [ 929.0, 200.0, 24.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-21",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_buftp",
													"fontsize" : 12.0,
													"patching_rect" : [ 795.0, 300.0, 91.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-20",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script delete",
													"fontsize" : 12.0,
													"patching_rect" : [ 795.0, 278.0, 123.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-19",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontsize" : 12.0,
													"patching_rect" : [ 895.0, 222.0, 24.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-13",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 846.0, 222.0, 24.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-12",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"fontsize" : 12.0,
													"patching_rect" : [ 795.0, 256.0, 34.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-9",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel buffer~",
													"fontsize" : 12.0,
													"patching_rect" : [ 846.0, 198.0, 68.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route clearbuff",
													"fontsize" : 12.0,
													"patching_rect" : [ 777.0, 101.0, 195.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_endlocalbuff",
													"fontsize" : 12.0,
													"patching_rect" : [ 931.0, 327.0, 129.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 12.0,
													"patching_rect" : [ 931.0, 296.0, 22.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t stop",
													"fontsize" : 12.0,
													"patching_rect" : [ 957.0, 200.0, 41.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "stop" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontsize" : 12.0,
													"patching_rect" : [ 931.0, 269.0, 34.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-6",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">= 500",
													"fontsize" : 12.0,
													"patching_rect" : [ 931.0, 247.0, 46.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-7",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "clocker 50",
													"fontsize" : 12.0,
													"patching_rect" : [ 930.0, 226.0, 66.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-10",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 12.0,
													"patching_rect" : [ 777.0, 124.0, 24.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-11",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "js patchdescribe.js",
													"fontsize" : 12.0,
													"patching_rect" : [ 777.0, 147.0, 160.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-16",
													"numoutlets" : 5,
													"fontname" : "Arial",
													"outlettype" : [ "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_buftp",
													"fontsize" : 12.0,
													"patching_rect" : [ 777.0, 77.0, 89.0, 20.0 ],
													"numinlets" : 0,
													"id" : "obj-17",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "thispatcher",
													"fontsize" : 12.0,
													"patching_rect" : [ 953.0, 151.0, 76.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-18",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "", "" ],
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-16", 3 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [ 892.25, 183.0, 938.5, 183.0 ]
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
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 904.5, 248.0, 804.5, 248.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 855.5, 248.0, 804.5, 248.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-9", 1 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 2 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 962.5, 135.0, 962.5, 135.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 940.5, 290.0, 1008.0, 290.0, 1008.0, 190.0, 966.5, 190.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 966.5, 222.0, 939.5, 222.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-69", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 1 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 1 ],
									"destination" : [ "obj-68", 1 ],
									"hidden" : 0,
									"midpoints" : [ 160.063675, 219.0, 302.546173, 219.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 1 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 849.5, 96.0, 837.720459, 96.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 3 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 0,
									"midpoints" : [ 322.645569, 129.0, 333.0, 129.0, 333.0, 177.0, 119.563675, 177.0 ]
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
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 147.5, 326.054382, 148.5, 326.054382 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 1 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 0,
									"midpoints" : [ 37.32016, 175.453949, 119.563675, 175.453949 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 964.68335, 96.674591, 972.012207, 96.674591 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 1 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 899.591675, 99.674591, 900.183655, 99.674591 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 834.5, 99.674591, 837.720459, 99.674591 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 2 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 2 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 0,
									"midpoints" : [ 200.563675, 202.453949, 352.723053, 202.453949 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 1 ],
									"destination" : [ "obj-92", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [ 160.536392, 257.674805, 66.4916, 257.674805 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 2",
					"fontsize" : 12.0,
					"patching_rect" : [ 157.0, 401.0, 24.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"fontsize" : 12.0,
					"patching_rect" : [ 127.0, 401.0, 24.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel fold AIFF WAVE Sd2f",
					"fontsize" : 12.0,
					"patching_rect" : [ 127.0, 371.0, 143.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 5,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang", "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2",
					"fontsize" : 12.0,
					"patching_rect" : [ 150.0, 431.0, 181.0, 20.0 ],
					"numinlets" : 2,
					"id" : "obj-8",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 12.0,
					"patching_rect" : [ 52.0, 293.0, 49.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /type /path /mainfolder",
					"fontsize" : 12.0,
					"patching_rect" : [ 128.0, 344.0, 359.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 4,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[1]",
					"text" : "jcom.message type @type msg_symbol @repetitions/allow 1 @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 468.0, 119.0, 590.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"A module for autogenerating buffers from folders and files\"",
					"fontsize" : 10.0,
					"patching_rect" : [ 22.0, 216.0, 432.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 170.0, 196.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-4",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"patching_rect" : [ 80.0, 189.0, 137.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-21",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 10.0,
					"patching_rect" : [ 223.0, 189.0, 38.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-49",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 22.0, 248.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-70",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 22.0, 169.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"id" : "obj-72",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"fontsize" : 10.0,
					"patching_rect" : [ 334.0, 132.0, 129.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-57",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message path @type msg_symbol @repetitions/allow 1 @description \"path of the parent folder dropped in, containing subfolders with sound files in or path of the sound file dropped in\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 334.0, 154.0, 591.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-61",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"presentation_rect" : [ 3.0, 20.0, 146.0, 14.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 605.0, 220.0, 94.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"presentation" : 1,
					"id" : "obj-15",
					"numoutlets" : 4,
					"lines" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 1.0, 0.0, 150.0, 35.0 ],
					"prefix" : "audio",
					"patching_rect" : [ 0.0, 0.0, 150.0, 35.0 ],
					"has_panel" : 1,
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-78",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 3 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 229.5, 392.0, 181.0, 392.0, 181.0, 398.0, 166.5, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 198.5, 392.0, 169.0, 392.0, 169.0, 398.0, 166.5, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 166.5, 422.0, 159.5, 422.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 136.5, 422.0, 159.5, 422.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 232.5, 209.0, 31.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 89.5, 209.0, 31.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 209.0, 31.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 4 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 260.5, 401.0, 211.0, 401.0, 211.0, 398.0, 194.5, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 194.5, 423.0, 159.0, 423.0, 159.0, 426.0, 159.5, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 343.5, 150.0, 344.0, 150.0, 344.0, 152.0, 343.5, 152.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 364.166656, 438.0, 395.5, 438.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [ 250.833328, 366.0, 282.0, 366.0, 282.0, 417.0, 321.5, 417.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
