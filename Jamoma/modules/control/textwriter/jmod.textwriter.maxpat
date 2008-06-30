{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 295.0, 312.0, 818.0, 422.0 ],
		"bglocked" : 0,
		"defrect" : [ 295.0, 312.0, 818.0, 422.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<---- what is this for ????",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 580.0, 315.0, 150.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 85.0, 167.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 233.0, 186.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "time",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 65.0, 25.0, 88.0, 23.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 14.0,
					"patching_rect" : [ 440.0, 310.0, 115.0, 23.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "int", "bang" ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar time",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 143.0, 374.0, 54.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "open_buffer",
					"presentation_rect" : [ 199.0, 28.0, 25.0, 16.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 445.0, 220.0, 25.0, 16.0 ],
					"filename" : "jsui_textbutton.js",
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"jsarguments" : [ "open" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "write",
					"presentation_rect" : [ 172.0, 28.0, 25.0, 16.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 440.0, 150.0, 25.0, 16.0 ],
					"filename" : "jsui_textbutton.js",
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"jsarguments" : [ "write" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[2]",
					"text" : "jcom.message open_buffer @type msg_generic @range/clipmode none @description \"Open the text buffer to view the content\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 440.0, 240.0, 285.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-7",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[1]",
					"text" : "jcom.message write @type msg_generic @range/clipmode none @description \"Write the text buffer to a file\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 440.0, 170.0, 246.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "clear",
					"presentation_rect" : [ 226.0, 28.0, 25.0, 16.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 440.0, 80.0, 25.0, 16.0 ],
					"filename" : "jsui_textbutton.js",
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"jsarguments" : [ "clear" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message clear @type msg_generic @range/clipmode none @description \"Clear the text buffer\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 440.0, 104.0, 247.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-12",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 233.0, 213.0, 52.0, 17.0 ],
					"numoutlets" : 3,
					"id" : "obj-13",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "on",
					"presentation_rect" : [ 5.0, 23.0, 51.0, 30.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 370.0, 35.0, 51.0, 30.0 ],
					"filename" : "jcom.jsui_texttoggle.js",
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "" ],
					"jsarguments" : [ "off", "on" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "on[1]",
					"text" : "jcom.parameter on @type msg_toggle @range/clipmode none @description \"Turn writing on\"",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 440.0, 44.0, 397.0, 17.0 ],
					"numoutlets" : 3,
					"id" : "obj-16",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 143.0, 270.0, 45.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 143.0, 249.0, 91.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-18",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 42.0, 105.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 231.0, 75.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.textwriter",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 143.0, 346.0, 100.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Write data to a text file with a timestamp for each value.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 130.0, 339.0, 27.0 ],
					"numoutlets" : 2,
					"id" : "obj-23",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 20.0, 106.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 168.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/write 0",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 167.0, 323.0, 153.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 167.0, 301.0, 61.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 102.0, 33.0, 102.0, 33.0, 123.0, 29.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 51.5, 124.0, 29.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 224.5, 291.0, 152.5, 291.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 224.5, 291.0, 176.5, 291.0 ]
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
