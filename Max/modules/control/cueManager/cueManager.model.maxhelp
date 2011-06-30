{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 406.0, 500.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 406.0, 500.0 ],
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
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 65.0, 427.0, 100.0, 19.0 ],
					"text" : "track.model"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-7",
					"maxclass" : "bpatcher",
					"name" : "cueManager.view.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 56.0, 143.0, 300.0, 70.0 ],
					"presentation_rect" : [ 70.0, 228.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 67.0, 341.0, 104.0, 19.0 ],
					"text" : "cueManager.model"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-5",
					"maxclass" : "bpatcher",
					"name" : "degrade~.view.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 54.0, 244.0, 300.0, 70.0 ],
					"presentation_rect" : [ 247.0, 337.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "mouse.view.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 205.0, 345.0, 150.0, 70.0 ],
					"presentation_rect" : [ 15.0, 15.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 65.0, 401.0, 100.0, 17.0 ],
					"text" : "degrade~.model"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 374.0, 100.0, 17.0 ],
					"text" : "mouse.model"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@name", "cueManager", "@description", "Module for managing cuelists" ],
					"bgmode" : 1,
					"id" : "obj-12",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 431.0, 70.0 ],
					"prototypename" : "bphelp",
					"varname" : "maxhelpui"
				}

			}
 ],
		"lines" : [  ]
	}

}
