{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 809.0, 306.0, 611.0, 471.0 ],
		"bglocked" : 0,
		"defrect" : [ 809.0, 306.0, 611.0, 471.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-10",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 190.0, 163.0, 89.0 ],
					"text" : "Note : to create a model you have to save the patch with a \"jmod.\" before.\n\nDO NOT use space and dot inside the name."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 231.0, 118.0, 288.0, 20.0 ],
					"text" : "Here is another jmod.tester embedded in a bpatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 138.0, 194.0, 20.0 ],
					"text" : "model name = bpatcher argument"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myModule" ],
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "jmod.tester.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 226.0, 137.0, 381.0, 329.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 83.0, 217.0, 20.0 ],
					"text" : "model name = patcher scripting name"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 46.0, 185.0, 20.0 ],
					"text" : "model name = patcher argument"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 12.0, 185.0, 20.0 ],
					"text" : "model name = patcher filename"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 237.0, 82.0, 70.0, 20.0 ],
					"text" : "jmod.tester",
					"varname" : "myTester"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 237.0, 46.0, 104.0, 20.0 ],
					"text" : "jmod.tester test.A"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 237.0, 12.0, 70.0, 20.0 ],
					"text" : "jmod.tester"
				}

			}
 ],
		"lines" : [  ]
	}

}
