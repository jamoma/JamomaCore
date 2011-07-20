{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 72.0, 69.0, 758.0, 731.0 ],
		"bglocked" : 0,
		"defrect" : [ 72.0, 69.0, 758.0, 731.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"args" : [ "@name", "jcom.spatDisplay", "@description", "spatial scene description widget" ],
					"bgmode" : 1,
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 758.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 180.0, 321.0, 19.0 ],
					"text" : "alt-click and drag to change the angle of a microphone"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 160.0, 321.0, 19.0 ],
					"text" : "click and drag to move a microphone or sound source"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "jcom.spatDisplay",
					"mic1.x" : 0.0,
					"mic1.y" : 0.0,
					"mic1.z" : 0.0,
					"numMicrophones" : 5,
					"numSources" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 125.0, 230.0, 478.0, 461.0 ],
					"source1.x" : 0.0,
					"source1.y" : 0.0,
					"source1.z" : 0.0,
					"title" : "Jamoma"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 120.0, 150.0, 19.0 ],
					"text" : "jcom.spatDisplay"
				}

			}
 ],
		"lines" : [  ]
	}

}
