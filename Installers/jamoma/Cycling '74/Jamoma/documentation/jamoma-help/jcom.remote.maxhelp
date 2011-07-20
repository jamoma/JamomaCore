{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 104.0, 97.0, 610.0, 521.0 ],
		"bglocked" : 0,
		"defrect" : [ 104.0, 97.0, 610.0, 521.0 ],
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
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 55.0, 110.0, 75.0, 19.0 ],
					"text" : "jcom.remote"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@name", "jcom.remote", "@description", "Internal", "component", "for", "module", "communication." ],
					"bgmode" : 1,
					"id" : "obj-24",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 610.0, 70.0 ],
					"varname" : "maxhelpui"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-20",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 145.0, 100.0, 293.0, 43.0 ],
					"text" : "jcom.remote is an internal component for communication between the hub and other parts of a module.  It is not intended for direct use in patchers."
				}

			}
 ],
		"lines" : [  ]
	}

}
