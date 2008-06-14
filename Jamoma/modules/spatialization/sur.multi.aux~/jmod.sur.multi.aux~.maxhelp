{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 153.0, 81.0, 894.0, 460.0 ],
		"bglocked" : 0,
		"defrect" : [ 153.0, 81.0, 894.0, 460.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "NOTE: Changes in number of distributed voices only take effext the next time audio is started.",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontname" : "Arial",
					"patching_rect" : [ 12.0, 72.0, 441.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.multi.aux~",
					"fontsize" : 18.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontname" : "Arial",
					"patching_rect" : [ 16.0, 19.0, 189.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A module to distribute a multicable to three receivers",
					"fontsize" : 9.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Arial",
					"patching_rect" : [ 17.0, 45.0, 257.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-4",
					"patching_rect" : [ 10.0, 3.0, 374.0, 68.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-5",
					"outlettype" : [ "float" ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"patching_rect" : [ 61.0, 380.0, 78.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-6",
					"outlettype" : [ "float" ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"patching_rect" : [ 47.0, 362.0, 78.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-7",
					"outlettype" : [ "float" ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"patching_rect" : [ 33.0, 344.0, 78.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-8",
					"outlettype" : [ "float" ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"patching_rect" : [ 567.0, 381.0, 78.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-9",
					"outlettype" : [ "float" ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"patching_rect" : [ 553.0, 363.0, 78.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-10",
					"outlettype" : [ "float" ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"patching_rect" : [ 314.0, 380.0, 78.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-11",
					"outlettype" : [ "float" ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"patching_rect" : [ 300.0, 362.0, 78.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/aux3/description to_mouse",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 209.0, 140.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/aux2/description to_dog",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 193.0, 127.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.thru",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-14",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 321.0, 230.0, 54.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 0.5",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-15",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 69.0, 105.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.aux~[5]",
					"args" : [ "/control" ],
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-16",
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 527.0, 132.0, 255.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-17",
					"outlettype" : [ "float" ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"patching_rect" : [ 539.0, 345.0, 78.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-18",
					"outlettype" : [ "float" ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"patching_rect" : [ 286.0, 344.0, 78.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.aux~[4]",
					"args" : [ "/mouse" ],
					"name" : "jmod.sur.multi.out~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 33,
					"id" : "obj-19",
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 524.0, 278.0, 255.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.aux~[3]",
					"args" : [ "/dog" ],
					"name" : "jmod.sur.multi.out~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 33,
					"id" : "obj-20",
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 271.0, 278.0, 255.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.aux~[2]",
					"args" : [ "/cat" ],
					"name" : "jmod.sur.multi.out~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 33,
					"id" : "obj-21",
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 16.0, 278.0, 255.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noise~",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-22",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 29.0, 105.0, 39.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.aux~[1]",
					"args" : [ "/multi.in" ],
					"name" : "jmod.sur.multi.in~.maxpat",
					"numinlets" : 33,
					"numoutlets" : 2,
					"id" : "obj-23",
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 17.0, 129.0, 255.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.aux~",
					"args" : [ "/jmod.sur.multi.aux~" ],
					"name" : "jmod.sur.multi.aux~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 4,
					"id" : "obj-24",
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 17.0, 198.0, 255.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/aux1/description to_cat",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-25",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 349.0, 176.0, 126.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "you can also name the busses",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-26",
					"fontname" : "Arial",
					"patching_rect" : [ 354.0, 162.0, 142.0, 17.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 3 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [ 262.5, 262.0, 769.5, 262.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 3 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 2 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [ 262.5, 265.0, 516.5, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 3 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [ 262.5, 270.0, 261.5, 270.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 3 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-23", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
