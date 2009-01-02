{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ -684.0, 10.0, 640.0, 506.0 ],
		"bglocked" : 0,
		"defrect" : [ -684.0, 10.0, 640.0, 506.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "file management can be found in the panel, by clicking on the i button",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 220.0, 240.0, 317.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 45.0, 45.0, 150.0, 35.0 ],
					"args" : [ "/bufferpool" ],
					"patching_rect" : [ 35.0, 150.0, 150.0, 35.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"name" : "jmod.bufferpool.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this is another bufferpool named differently... note it appears in the topleft menu of the bpatcher below",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 220.0, 400.0, 289.0, 29.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 38.0, 309.0, 150.0, 35.0 ],
					"args" : [ "/nutherpool" ],
					"patching_rect" : [ 35.0, 395.0, 150.0, 35.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"name" : "jmod.bufferpool.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "once the buffers are created, they can be accessed when implementing the menu structure contained in this bpacther",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 265.0, 305.0, 289.0, 29.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "single files can be added as well, and appear then in the AddeFiles menu below",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 220.0, 195.0, 289.0, 29.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- drag'n'drop a folder with subfolders containing soundfiles to create a collection of buffers",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 220.0, 155.0, 289.0, 29.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "int", "int" ],
					"args" : [ "myModule" ],
					"patching_rect" : [ 35.0, 300.0, 218.0, 33.0 ],
					"id" : "obj-2",
					"numinlets" : 4,
					"name" : "jcom.buffer_selector.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.bufferpool",
					"numoutlets" : 0,
					"fontsize" : 17.334082,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 35.0, 40.0, 189.0, 28.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "builds a collection of buffers based on a folder with subfolders",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 30.0, 70.0, 319.0, 18.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 25.0, 325.0, 71.0 ],
					"id" : "obj-23",
					"rounded" : 15,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [  ]
	}

}
