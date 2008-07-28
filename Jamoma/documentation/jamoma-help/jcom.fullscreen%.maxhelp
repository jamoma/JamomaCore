{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 429.0, 99.0, 380.0, 216.0 ],
		"bglocked" : 0,
		"defrect" : [ 429.0, 99.0, 380.0, 216.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
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
					"text" : "jcom.fullscreen% 32",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 152.0, 143.0, 127.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "optional argument sets which key code to trigger fullscreen (default = 27 = escape)",
					"linecount" : 4,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 152.0, 87.0, 131.0, 55.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.window",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 25.0, 143.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.fullscreen%",
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 99.0, 109.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.fullscreen%",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 15.0, 159.0, 28.0 ],
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Makes a jit.window fill the screen when hitting escape",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 40.0, 280.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 10.0, 292.0, 50.0 ],
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
