{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 759.0, 50.0, 303.0, 163.0 ],
		"bglocked" : 0,
		"defrect" : [ 759.0, 50.0, 303.0, 163.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 65.0, 16.0, 16.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p name",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"numinlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 190.0, 25.0, 48.0, 19.0 ],
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 318.0, 182.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 318.0, 182.0 ],
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend name",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 95.0, 75.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 225.0, 20.0, 52.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine audio/amplitude. 1 @triggers 1",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 65.0, 214.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "#1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 225.0, 45.0, 50.0, 16.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-11",
									"numinlets" : 1,
									"patching_rect" : [ 30.0, 120.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 1 ],
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
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return audio/amplitude @type msg_float @range/bounds 0. 1. @enable 0 @description \"instant amplitude of the signal number #1\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"patching_rect" : [ 40.0, 65.0, 575.0, 33.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.remote #1__meter__",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-52",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"patching_rect" : [ 20.0, 25.0, 161.0, 20.0 ],
					"numoutlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 199.5, 43.0, 199.0, 43.0, 199.0, 56.0, 49.0, 56.0, 49.0, 62.0, 49.5, 62.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 56.0, 49.5, 56.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 57.0, 29.5, 57.0 ]
				}

			}
 ]
	}

}
