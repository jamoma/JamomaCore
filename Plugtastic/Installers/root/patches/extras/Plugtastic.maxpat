{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 271.0, 170.0, 799.0, 489.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 271.0, 170.0, 799.0, 489.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 13.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica Neue Light",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 1,
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"title" : "Welcome to Plugtastic",
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r plugtastic_extra_toggle",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 14.336921,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 15.0, 375.0, 160.0, 24.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-7",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "bang" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 14.336921,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 275.0, 66.0, 24.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-6",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rplugtastic get_show_extra_on_launch",
					"linecount" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontsize" : 14.336921,
					"gradient" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 25.0, 315.0, 240.0, 39.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-4",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rplugtastic set_show_extra_on_launch $1",
					"linecount" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontsize" : 14.336921,
					"gradient" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 75.0, 415.0, 259.0, 39.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-3",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontsize" : 14.336921,
					"gradient" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 555.0, 455.0, 32.5, 22.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-31",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontsize" : 14.336921,
					"gradient" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 515.0, 455.0, 32.5, 22.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-30",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontsize" : 14.336921,
					"gradient" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 475.0, 455.0, 32.5, 22.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-29",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontsize" : 14.336921,
					"gradient" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 395.0, 455.0, 32.5, 22.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-28",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontsize" : 14.336921,
					"gradient" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 435.0, 455.0, 32.5, 22.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-27",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "Plugtastic-Content.maxpat",
					"background" : 0,
					"offset" : [ 0.0, 0.0 ],
					"clickthrough" : 0,
					"args" : [  ],
					"ignoreclick" : 0,
					"bgmode" : 0,
					"enablehscroll" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"embed" : 0,
					"lockeddragscroll" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"border" : 0,
					"patching_rect" : [ 0.0, 0.0, 576.0, 440.0 ],
					"enablevscroll" : 0,
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "onecopy",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"ignoreclick" : 0,
					"fontface" : 0,
					"fontsize" : 14.336921,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 315.0, 455.0, 62.0, 24.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-23",
					"fontname" : "Helvetica Neue Light"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "plug.button.1tab.maxpat",
					"background" : 0,
					"outlettype" : [ "bang" ],
					"offset" : [ 0.0, 0.0 ],
					"clickthrough" : 0,
					"args" : [ "Feedback", "Ask us questions, report bugs, and share your ideas" ],
					"ignoreclick" : 0,
					"bgmode" : 0,
					"enablehscroll" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"embed" : 0,
					"lockeddragscroll" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 0,
					"border" : 0,
					"patching_rect" : [ 575.0, 351.0, 225.0, 89.0 ],
					"enablevscroll" : 0,
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "plug.button.1tab.maxpat",
					"background" : 0,
					"outlettype" : [ "bang" ],
					"offset" : [ 0.0, 0.0 ],
					"clickthrough" : 0,
					"args" : [ "Authorize", "Get a key to enable plug-in building for your computer" ],
					"ignoreclick" : 0,
					"bgmode" : 0,
					"enablehscroll" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"embed" : 0,
					"lockeddragscroll" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 0,
					"border" : 0,
					"patching_rect" : [ 575.0, 263.0, 225.0, 89.0 ],
					"enablevscroll" : 0,
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "plug.button.1tab.maxpat",
					"background" : 0,
					"outlettype" : [ "bang" ],
					"offset" : [ 0.0, 0.0 ],
					"clickthrough" : 0,
					"args" : [ "Extend", "Learn how to create your own objects in C++" ],
					"ignoreclick" : 0,
					"bgmode" : 0,
					"enablehscroll" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"embed" : 0,
					"lockeddragscroll" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 0,
					"border" : 0,
					"patching_rect" : [ 575.0, 175.0, 225.0, 89.0 ],
					"enablevscroll" : 0,
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "plug.button.1tab.maxpat",
					"background" : 0,
					"outlettype" : [ "bang" ],
					"offset" : [ 0.0, 0.0 ],
					"clickthrough" : 0,
					"args" : [ "Use", "Get started with Plugtastic using the Max file browser" ],
					"ignoreclick" : 0,
					"bgmode" : 0,
					"enablehscroll" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"embed" : 0,
					"lockeddragscroll" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 0,
					"border" : 0,
					"patching_rect" : [ 575.0, 87.0, 225.0, 89.0 ],
					"enablevscroll" : 0,
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "plug.button.1tab.maxpat",
					"background" : 0,
					"outlettype" : [ "bang" ],
					"offset" : [ 0.0, 0.0 ],
					"clickthrough" : 0,
					"args" : [ "Welcome", "Watch videos and get aquainted with Plugtastic" ],
					"ignoreclick" : 0,
					"bgmode" : 0,
					"enablehscroll" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"embed" : 0,
					"lockeddragscroll" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 0,
					"border" : 0,
					"patching_rect" : [ 575.0, -1.0, 225.0, 89.0 ],
					"enablevscroll" : 0,
					"numoutlets" : 1,
					"presentation" : 0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"name" : "plug.button.onlaunch.tiff",
					"background" : 0,
					"snap" : 1,
					"trackvertical" : 0,
					"outlettype" : [ "int" ],
					"active" : 1,
					"multiplier" : 0,
					"tracking" : 0,
					"imagemask" : 0,
					"range" : 128,
					"offset" : 0,
					"ignoreclick" : 0,
					"ratio" : 2,
					"clip" : 1,
					"trackcircular" : 0,
					"hidden" : 0,
					"degrees" : 270,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"threshold" : 0,
					"mode" : 1,
					"trackhorizontal" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 454.0, 260.0, 18.0 ],
					"inactiveimage" : 0,
					"numoutlets" : 1,
					"clickincrement" : 0,
					"clickedimage" : 1,
					"presentation" : 0,
					"frames" : 10,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"name" : "plug.button.update.png",
					"background" : 0,
					"snap" : 1,
					"trackvertical" : 0,
					"outlettype" : [ "int" ],
					"active" : 1,
					"multiplier" : 0,
					"tracking" : 0,
					"imagemask" : 0,
					"range" : 128,
					"offset" : 0,
					"ignoreclick" : 0,
					"ratio" : 2,
					"clip" : 1,
					"trackcircular" : 0,
					"hidden" : 0,
					"degrees" : 270,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"threshold" : 0,
					"mode" : 0,
					"trackhorizontal" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 614.0, 453.0, 151.0, 26.0 ],
					"inactiveimage" : 0,
					"numoutlets" : 1,
					"clickincrement" : 0,
					"clickedimage" : 1,
					"presentation" : 0,
					"frames" : 10,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"shadow" : 0,
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"background" : 0,
					"angle" : 0.0,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"shape" : 0,
					"ignoreclick" : 1,
					"bordercolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"vertical_direction" : 0,
					"bgcolor" : [ 0.929412, 0.929412, 0.929412, 1.0 ],
					"mode" : 0,
					"arrow_orientation" : 0,
					"numinlets" : 1,
					"border" : 1,
					"horizontal_direction" : 0,
					"patching_rect" : [ -5.0, 439.0, 810.0, 80.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"id" : "obj-1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
