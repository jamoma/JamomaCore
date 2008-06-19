{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 219.0, 308.0, 818.0, 422.0 ],
		"bglocked" : 0,
		"defrect" : [ 219.0, 308.0, 818.0, 422.0 ],
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
					"maxclass" : "inlet",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 229.0, 150.0, 15.0, 15.0 ],
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "time",
					"fontsize" : 14.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 58.0, 27.0, 115.0, 23.0 ],
					"textcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"id" : "obj-2",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"triangle" : 0,
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar time",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 139.0, 338.0, 54.0, 17.0 ],
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "open_buffer",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 199.0, 28.0, 25.0, 16.0 ],
					"id" : "obj-4",
					"jsarguments" : [ "open" ],
					"outlettype" : [ "" ],
					"filename" : "jsui_textbutton.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "write",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 172.0, 28.0, 25.0, 16.0 ],
					"id" : "obj-5",
					"jsarguments" : [ "write" ],
					"outlettype" : [ "" ],
					"filename" : "jsui_textbutton.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar open_buffer",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 250.0, 88.0, 17.0 ],
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[2]",
					"text" : "jcom.message open_buffer @type msg_generic @range/clipmode none @description \"Open the text buffer to view the content\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 400.0, 272.0, 285.0, 27.0 ],
					"id" : "obj-7",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar write",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 180.0, 59.0, 17.0 ],
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[1]",
					"text" : "jcom.message write @type msg_generic @range/clipmode none @description \"Write the text buffer to a file\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 400.0, 202.0, 244.0, 27.0 ],
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "clear",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 226.0, 28.0, 25.0, 16.0 ],
					"id" : "obj-10",
					"jsarguments" : [ "clear" ],
					"outlettype" : [ "" ],
					"filename" : "jsui_textbutton.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar clear",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 114.0, 57.0, 17.0 ],
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message clear @type msg_generic @range/clipmode none @description \"Clear the text buffer\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 400.0, 136.0, 244.0, 27.0 ],
					"id" : "obj-12",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 229.0, 177.0, 52.0, 17.0 ],
					"id" : "obj-13",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "on",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 5.0, 23.0, 51.0, 30.0 ],
					"id" : "obj-14",
					"jsarguments" : [ "off", "on" ],
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_texttoggle.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar on",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 54.0, 44.0, 17.0 ],
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "on[1]",
					"text" : "jcom.parameter on @type msg_toggle @range/clipmode none @description \"Turn writing on\"",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 400.0, 76.0, 397.0, 17.0 ],
					"id" : "obj-16",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 139.0, 234.0, 45.0, 17.0 ],
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 139.0, 213.0, 91.0, 17.0 ],
					"id" : "obj-18",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 38.0, 69.0, 125.0, 15.0 ],
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 229.0, 66.0, 25.0 ],
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 195.0, 75.0, 25.0 ],
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.textwriter",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 139.0, 310.0, 100.0, 17.0 ],
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.textwriter @size 1U-half @module_type control @description \"Write data to a text file with a timestamp for each value.\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 16.0, 94.0, 339.0, 27.0 ],
					"id" : "obj-23",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 70.0, 13.0, 13.0 ],
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 132.0, 13.0, 13.0 ],
					"id" : "obj-25",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 163.0, 287.0, 153.0, 15.0 ],
					"id" : "obj-26",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 163.0, 265.0, 61.0, 17.0 ],
					"id" : "obj-27",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 409.5, 101.0, 393.0, 101.0, 393.0, 49.0, 409.5, 49.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 220.5, 255.0, 172.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 220.5, 255.0, 148.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 47.5, 88.0, 25.5, 88.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
