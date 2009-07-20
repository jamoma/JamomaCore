{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 31.0, 54.0, 397.0, 246.0 ],
		"bglocked" : 0,
		"defrect" : [ 31.0, 54.0, 397.0, 246.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"args" : [ "@name", "jmod.multicast", "@description", "Multicast bonjour core" ],
					"bgmode" : 1,
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 397.0, 70.0 ],
					"prototypename" : "bphelp",
					"varname" : "maxhelpui"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 206.0, 258.0, 19.0 ],
					"text" : "Windows users : you have to install Bonjour first:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.0, 94.0, 361.0, 19.0 ],
					"text" : "Add services from oher destinations.. they should appear in the menu"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/multicast" ],
					"id" : "obj-6",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.multicast.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 126.0, 300.0, 70.0 ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"varname" : "/wacom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 76.0, 294.0, 19.0 ],
					"text" : "Choose a port number and a service name for this core"
				}

			}
 ],
		"lines" : [  ]
	}

}
