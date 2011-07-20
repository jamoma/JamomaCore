{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 309.0, 135.0, 519.0, 355.0 ],
		"bglocked" : 0,
		"defrect" : [ 309.0, 135.0, 519.0, 355.0 ],
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
					"handoff" : "",
					"id" : "obj-12",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 32.0, 278.19873, 374.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 29.877563, 302.5, 417.0, 29.0 ],
					"text" : ";\rmax launchbrowser http://github.com/Nilson/ViMiC-and-friends/archives/master"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 12.0,
					"frgb" : [ 0.152941, 0.254902, 0.658824, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.0, 275.0, 473.0, 21.0 ],
					"text" : "http://github.com/Nilson/ViMiC-and-friends/archives/master",
					"textcolor" : [ 0.152941, 0.254902, 0.658824, 1.0 ],
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-3",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 109.0, 477.0, 167.0 ],
					"text" : "ViMiC is a tool for real-time spatialization synthesis, particularly for concert situations and site-specific immersive installations, and especially for larger or non-centralized audiences. \n\nBased on the concept of virtual microphones positioned within a virtual 3D room, ViMiC supports loudspeaker reproduction up to 24 discrete channels for which the loudspeakers do not necessarily have to be placed uniformly and equidistant around the audience. \n\n\nTo download the ViMiC modules for Jamoma including a users manual, go to "
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@name", "jcom.vimic~", "@description", "Virtual Microphone Control" ],
					"bgmode" : 1,
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 519.0, 70.0 ],
					"varname" : "maxhelpui"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-12", 0 ]
				}

			}
 ]
	}

}
