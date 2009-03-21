{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 8.0, 61.0, 298.0, 229.0 ],
		"bglocked" : 0,
		"defrect" : [ 8.0, 61.0, 298.0, 229.0 ],
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
					"maxclass" : "comment",
					"text" : "jmod.keyboard",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"patching_rect" : [ 20.0, 20.0, 197.0, 28.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a control module for handling the computer's keyboard inputs in Jamoma",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"patching_rect" : [ 20.0, 50.0, 260.0, 31.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 15.0, 276.0, 65.0 ],
					"rounded" : 15,
					"id" : "obj-25",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"presentation_rect" : [ 15.0, 15.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/", "keyboard" ],
					"patching_rect" : [ 30.0, 110.0, 150.0, 70.0 ],
					"name" : "jmod.keyboard.maxpat",
					"id" : "obj-1",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [  ]
	}

}
